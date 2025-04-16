#!/usr/bin/env bash

# color variables
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
NC=$(tput sgr0) # no color / reset
VERSION="0.1"

############## Tools and Config ###############
# aligner: bwa or minimap2
ALIGNER_TOOL="minimap2"
# taxonomy: metaphlan or kraken2
TAXA_TOOL="metaphlan"
PAIRED="true"
THREADS="16"

############ Input directory path ##################
RAWDATA_DIR="rawdata" # folder/dir where raw input fastq files are
REF_GENOME_FILE="hg38.fa" # make sure to unzip it

# Download or build kraken2 database
KRAKEN2_DB_PATH="mainDB"

export KRAKEN2_NUM_THREADS=$THREADS
# Specify the directory variables for output results
################## EDIT SET FILE PATHS ########################
ALIGNED_OUT_DIR="aligned_output"
QC_REPORT_DIR="reports"
TAXONOMIC_PROFILE_DIR="profiled"
ABRICATE_OUT_DIR="amr_screening"
LOG_OUTPUT_DIR="run_logs"
##############################################################


# List of tools to check
TOOLS=("fastqc" "fastp" "samtools" "${ALIGNER_TOOL}" "spades.py" "abricate" "quast.py" "metaphlan")

function check_tools() {
    local missing_tools=()
    for tool in "${TOOLS[@]}"; do
        if ! command -v "$tool" &> /dev/null; then
            echo "${RED}Error:${NC} ${YELLOW}$tool${NC} ${RED}is not installed.${NC}"
            missing_tools+=("$tool")
        fi
    done

    # Exit if any tools are missing
    if [ ${#missing_tools[@]} -gt 0 ]; then
        echo "The following tools are missing: ${YELLOW} ${missing_tools[*]} ${NC}"
        echo "Please do install them in the Linux environment and start the pipeline again."
        exit 1
    else
        echo "All required tools are installed. Starting the pipeline"
    fi
}

function print_header() {
    local message="$1"
    local length=${#message}
    local border=$(printf '%*s' $((length + 20)) | tr ' ' '=')

    echo "$border"
    echo -e "${YELLOW}-->>${NC} ${GREEN} $message ${NC} "
    echo "$border"
}


# Function to check for errors and stop execution if any command fails
function check_error() {
    if [[ $? -ne 0 ]]; then
        print_header "${RED} Error encountered. Stopping pipeline. Needs manual intervention to the script! ${NC}"
        exit 1
    fi
}


# Function to extract unique base filenames
function get_rawdata() {
    local directory="$1"
    local -A basenames_map
    local file basename

    if [ ! -d "$directory" ]; then
        echo "Error: '$directory' is not a valid directory with rawdata files. Correct the path"
        exit 1
    fi

    for file in "$directory"/*.gz; do
        [ -e "$file" ] || continue

        rawfile=$(basename "$file")

        if [[ "$PAIRED" == "true" ]]; then
            rawfile=${rawfile%%_*}
            basenames_map["$rawfile"]=1
        else
            rawfile=${rawfile%%.*}
            basenames_map["$rawfile"]=1
        fi

    done

    # Convert associative array keys into an array of unique basenames
    local unique_basenames=("${!basenames_map[@]}")

    echo "${unique_basenames[@]}"
}

function quality_check() {
    local srr_id=$1
    local output=$2


    if [ "$PAIRED" == "true" ]; then
        fastp -i ${srr_id}_1.fastq.gz -I ${srr_id}_2.fastq.gz -o ${output}_trim_1.fastq.gz -O ${output}_trim_2.fastq.gz -w $THREADS
    else
        fastp -i ${srr_id}.fastq.gz -o ${output}_trim.fastq.gz -w $THREADS
    fi
    check_error
    print_header "Quality check and Trimming finished for ${srr_id} ID."

}

function fastqc_report() {
    local srr_id=$1

    if [ "$PAIRED" == "true" ]; then
        fastqc ${srr_id}_1.fastq.gz ${srr_id}_2.fastq.gz -o ${qc_report} -t $THREADS
    else
        fastqc ${srr_id}.fastq.gz -o ${qc_report} -t $THREADS
    fi
    check_error
    print_header "Fastqc quality reports generated for ${srr_id} ID."
}

function index_ref() {
    local ref=${REF_GENOME}
    if [ "$ALIGNER" == "minimap2" ]; then
        minimap2 -d ${ref%.fa}.mmi ${ref}
    else
        echo "Choose only minimap2"
        exit 1
    fi
    print_header "Indexed the reference genome ${ref}."
}

function align_reads() {
    # I guess no need for this, when spades is doing denovo assembly?
    local srr_id=$1
    local ref=${REF_GENOME}

    if [ "$PAIRED" == "true" ]; then
        minimap2 -t $THREADS -ax sr ${ref%.fa}.mmi ${srr_id}_trim_1.fastq.gz ${srr_id}_trim_2.fastq.gz > ${alignout}/${srr_id}.sam
    else
        minimap2 -t $THREADS -ax sr ${ref%.fa}.mmi ${srr_id}_trim.fastq.gz > ${alignout}/${srr_id}.sam
    fi
    check_error
    print_header "Aligned reads for ${srr_id} ID."
}

function assemble_reads() {
    local srr_id=$1
    if [ "$PAIRED" == "true" ]; then
        spades.py --meta -1 "${srr_id}_trim_1.fastq.gz" -2 "${srr_id}_trim_2.fastq.gz" -o "${alignout}" -t $THREADS -m 128 --only-assembler
    else
        spades.py --meta "${srr_id}_trim.fastq.gz" -o "${alignout}" -t $THREADS -m 128 --only-assembler
    fi
    check_error
    print_header "Assembled reads for ${srr_id} ID."
}

function quast_check() {
    local srr_id=$1
    quast.py ${alignout}/contigs.fasta -o ${qc_reports}/quast --min-contig 100
    check_error
    print_header "Quast quality checked for ${srr_id} ID."
}

function metaphlan_profile() {
    local srr_id=$1

    if [ "$PAIRED" == "true" ]; then
        metaphlan ${srr_id}_trim_1.fastq.gz,${srr_id}_trim_2.fastq.gz --nproc 32 --input_type fastq -o $meta_profile
    else
        metaphlan ${srr_id}_trim.fastq.gz --nproc 32 --input_type fastq -o $meta_profile
    fi
    check_error
    print_header "Profiling of microbial communities for ${srr_id} ID."
}

function abricate_summary() {
    local srr_id=$1
    local input=$alignout/contigs.fasta
    local output=$amr_output

    abricate --threads $THREADS --mincov 60 --db ncbi "$input" > "$output/amr.txt" 2> "$log_output/amr.log"

    abricate --threads $THREADS --mincov 60 --db plasmidfinder "$input" > "$output/pf.txt" 2> "$log_output/pf.log"

    abricate --threads $THREADS --mincov 60 --db vfdb "$input" > "$output/vf.txt" 2> "$log_output/vf.log"

    abricate --summary "$output/amr.txt" > "$output/amr.summary"

    abricate --summary "$output/pf.txt" > "$output/pf.summary"

    abricate --summary "$output/vf.txt" > "$output/vf.summary"
    check_error
    print_header "AMR spotted with abricate."
}


function run_pipeline() {
    # run pre-requisite
    # check_tools
    reads_id=$(get_rawdata "$RAWDATA")

    print_header "Running MetaAMRSpotter Pipeline"

    for id in ${reads_id[@]}; do
        quality_check $RAWDATA/$id $qc_report/$id
        fastqc_report $id
        assemble_reads $qc_report/$id
        quast_check $qc_report/$id # Check if spades gives two contig so if else with $PAIRED
        metaphlan_profile $qc_report/$id
        abricate_summary
    done

}

run_pipeline
# run: bash amr-spotter.sh
