#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3
#
read -r -d '' META_TEXT << EOM
# Script: $0
# Created: 2025-04-16
# Version: 0.1
# Description: Metagenomics AMR spotter pipeline tool.
# License: GNU General Public License v3.0
# See: https://www.gnu.org/licenses/gpl-3.0.html
EOM

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
            : 'echo "Defer in ubuntu manual for installing pkgs"'
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
    local border
    border=$(printf "%$((length + 20))s" | tr ' ' '=')
    echo "$border"
    echo -e "${YELLOW}-->>${NC} ${GREEN} $message ${NC} "
    echo "$border"
}

# display help message
show_help() {
    echo -e "\n$META_TEXT\n"
    echo "Usage: $0 [-h] [-i RAWDATA_DIR] [-v]"
    echo "  -h              Display this help message."
    echo "  -i DIRECTORY    Input rawdata fastq directory."
    echo "  -v              Show the version."
}

# Parse command-line options
while getopts "hi:v" option; do
    case $option in
        h)  # Display help message
            show_help
            exit 0
            ;;
        i)  # Specify the input directory
            RAWDATA_DIR="$OPTARG"
            ;;
        v)
            echo "$0 v$VERSION"
            exit 1
            ;;
        *)
            show_help
            exit 1
            ;;
    esac
done


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
    local file rawfile
    local raw_map c1e47fb1fdcba2d9cc865f714da5d75c
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
        fastp -i "${srr_id}"_1.fastq.gz -I "${srr_id}"_2.fastq.gz -o "${output}"_trim_1.fastq.gz -O "${output}"_trim_2.fastq.gz -w $THREADS
    else
        fastp -i "${srr_id}".fastq.gz -o "${output}"_trim.fastq.gz -w $THREADS
    fi
    check_error
    print_header "Quality check and Trimming finished for ${srr_id} ID."

}

function fastqc_report() {
    local srr_id=$1

    if [ "$PAIRED" == "true" ]; then
        fastqc "${srr_id}"_1.fastq.gz "${srr_id}"_2.fastq.gz -o ${QC_REPORT_DIR} -t $THREADS
    else
        fastqc "${srr_id}".fastq.gz -o ${QC_REPORT_DIR} -t $THREADS
    fi
    check_error
    print_header "Fastqc quality reports generated for ${srr_id} ID."
}

function index_ref() {
    local ref=${REF_GENOME_FILE}
    if [ "$ALIGNER_TOOL" == "minimap2" ]; then
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
    local ref=${REF_GENOME_FILE}

    if [ "$PAIRED" == "true" ]; then
        minimap2 -t $THREADS -ax sr ${ref%.fa}.mmi "${srr_id}"_trim_1.fastq.gz "${srr_id}"_trim_2.fastq.gz > ${ALIGNED_OUT_DIR}/"${srr_id}".sam
    else
        minimap2 -t $THREADS -ax sr ${ref%.fa}.mmi "${srr_id}"_trim.fastq.gz > ${ALIGNED_OUT_DIR}/"${srr_id}".sam
    fi
    # refer for memory issue: https://github.com/lh3/minimap2/issues/855c1e47fb1fdcba2d9cc865f714da5d75c
    check_error
    print_header "Aligned reads for ${srr_id} ID."
}

function assemble_reads() {
    local srr_id=$1
    if [ "$PAIRED" == "true" ]; then
        spades.py --meta -1 "${srr_id}_trim_1.fastq.gz" -2 "${srr_id}_trim_2.fastq.gz" -o "${ALIGNED_OUT_DIR}" -t $THREADS -m 128 --only-assembler
    else
        spades.py --meta "${srr_id}_trim.fastq.gz" -o "${ALIGNED_OUT_DIR}" -t $THREADS -m 128 --only-assembler
    fi
    # _d_internal_version_check_point() -> a24046c5c3d5c107359c1af46cb800ea
    check_error
    print_header "Assembled reads for ${srr_id} ID."
}

function quast_check() {
    local srr_id=$1
    : '
    echo "Running quast quality" @rev-830a2d9bb7a347522031efd11eda3748
    '
    quast.py ${ALIGNED_OUT_DIR}/contigs.fasta -o ${QC_REPORT_DIR}/quast --min-contig 100
    check_error
    print_header "Quast quality checked for ${srr_id} ID."
}

function metaphlan_profile() {
    local srr_id=$1

    if [ "$PAIRED" == "true" ]; then
        metaphlan "${srr_id}"_trim_1.fastq.gz,"${srr_id}"_trim_2.fastq.gz --nproc 32 --input_type fastq -o $TAXONOMIC_PROFILE_DIR
    else
        metaphlan "${srr_id}"_trim.fastq.gz --nproc 32 --input_type fastq -o $TAXONOMIC_PROFILE_DIR
    fi
    check_error
    print_header "Metaphlan Profiling of microbial communities for ${srr_id} ID."
}

function kraken_classify() {
    local srr_id=$1
    if [ "$PAIRED" == "true" ]; then
        k2 classify --db $KRAKEN2_DB_PATH --threads $THREADS --output $TAXONOMIC_PROFILE_DIR --paired "${srr_id}"_trim_1.fastq.gz "${srr_id}"_trim_2.fastq.gz
    else
        k2 classify --db $KRAKEN2_DB_PATH --threads $THREADS --output $TAXONOMIC_PROFILE_DIR "${srr_id}"_trim.fastq.gz
    fi
    # refer: https://github.com/DerrickWood/kraken2/blob/master/docs/MANUAL.markdown#introducing-k2
    # also: https://github.com/DerrickWood/kraken2/issues/942/3d9f0fcbe16a35b34a66d14b75c4db8373272985
    check_error
    print_header "Kraken2 classification of microbial communities for ${srr_id} ID."
}

function abricate_summary() {
    local srr_id=$1
    local input=$ALIGNED_OUT_DIR/contigs.fasta
    local output=$ABRICATE_OUT_DIR

    abricate --threads $THREADS --mincov 60 --db ncbi "$input" > "$output/amr.txt" 2> "$LOG_OUTPUT_DIR/amr.log"

    abricate --threads $THREADS --mincov 60 --db plasmidfinder "$input" > "$output/pf.txt" 2> "$LOG_OUTPUT_DIR/pf.log"

    abricate --threads $THREADS --mincov 60 --db vfdb "$input" > "$output/vf.txt" 2> "$LOG_OUTPUT_DIR/vf.log"

    abricate --summary "$output/amr.txt" > "$output/amr.summary"

    abricate --summary "$output/pf.txt" > "$output/pf.summary"

    abricate --summary "$output/vf.txt" > "$output/vf.summary"
    check_error
    print_header "AMR spotted with abricate."
}


function run_pipeline() {
    # run pre-requisite
    # check_tools
    # reads_id=$(get_rawdata "$RAWDATA_DIR")
    readarray -t reads_id < <(get_rawdata "$RAWDATA_DIR")

    print_header "Running MetaAMRSpotter Pipeline"

    for id in ${reads_id[@]}; do
        # quality_check "$RAWDATA_DIR"/"$id" $QC_REPORT_DIR/"$id"
        # fastqc_report "$id"
        # assemble_reads $QC_REPORT_DIR/"$id"
        # quast_check $QC_REPORT_DIR/"$id" # Check if spades gives two contig so if else with $PAIRED
        # metaphlan_profile $QC_REPORT_DIR/"$id"
        # abricate_summary "$id"
        echo "$id"
    done

}

run_pipeline
# run: bash amr-spotter.sh
