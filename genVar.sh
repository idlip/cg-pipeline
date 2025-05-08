#!/usr/bin/env bash

# !! Define global variables !!
THREADS=16

# https://ftp.ncbi.nlm.nih.gov/snp/organisms/human_9606_b151_GRCh37p13/VCF/GATK/
DBSNP_VCF="00-All.vcf.gz"  # You should assign a valid VCF file path to DBSNP_VCF if necessary
dlcmd="aria2c -j 10 -s 10 -Z -d rawdata/" # or wget or gui manager

################## EDIT SET FILE PATHS ########################
datadir="rawdata"
alignout="aligned_out76"
picard_jar="../picard.jar"
gatk_jar="../gatk-package-4.6.1.0-local.jar"
annovar="../../annovar"
humandb="../../annovar/humandb"
##############################################################

mkdir -p "${datadir}"

# Print a pattern with pipeline information
function print_header() {
    text="\t\tTHIS NGS PIPELINE WAS CONSTRUCTED AND AUTOMATED BY\e[1;32m TO FIND SOMATIC VARIANTS \e[0m"
    len=${#text}
    total_length=$((len + 6))  # Total length of the pattern

    border=$(printf '%0.s*' $(seq 1 $((total_length + 4)) ))
    space=$(printf ' ' %.0s $(seq 1 $((total_length + 2)) ))

    echo -e "\e[1;32m$border\e[0m"
    echo -e "\e[1;32m* $space *\e[0m"
    echo -e "\e[1;32m* $text *\e[0m"
    echo -e "\e[1;32m* $space *\e[0m"
    echo -e "\e[1;32m$border\e[0m"
}

# Function to check for errors and stop execution if any command fails
function check_error() {
    if [[ $? -ne 0 ]]; then
        echo -e "\e[1;31mError encountered. Stopping pipeline.\e[0m"
        exit 1
    fi
}

ask_prompt() {
  while true; do
    read -p "$* [y/n]: " yn
    case $yn in
      [Yy]* ) return 0;;
      [Nn]* ) echo "Aborted"; return 1;;
      * ) echo "Please answer yes or no.";;
    esac
  done
}

function quality_check() {
    local srr_id=$1
    local is_paired=$2

    if [ "$is_paired" == "true" ]; then
        fastp -i ${srr_id}_1.fastq.gz -I ${srr_id}_2.fastq.gz -o ${srr_id}_trim_1.fastq.gz -O ${srr_id}_trim_2.fastq.gz -w $THREADS
    else
        fastp -i ${srr_id}.fastq.gz -o ${srr_id}_trim.fastq.gz -w $THREADS
    fi
}

function download_data() {

    if ask_prompt "Do you want to download datasets?"; then
        read -p "Enter the SRR ID or link for samples: " link
    else
        echo "Proceeding further with existing data"
    fi

    # add way to download ref? way to dl all required datasets first?
    # Annovar dbs |
}

# Alignment with reference genome (paired-end or single-end)
function align_reads() {
    local ref=$1
    local srr_id=$2
    local is_paired=$3

    mkdir -p $alignout
    minimap2 -d ${ref%.fa}.mmi ${ref}
    samtools faidx ${ref}

    # bowtie2-build $ref hg19_index

    echo -e "\n\t\t\e[1;32m ALIGNMENT WITH INDEXED REFERENCE GENOME \e[0m\n"

    if [ "$is_paired" == "true" ]; then
        # Paired-end alignment
        minimap2 -t $THREADS -ax sr ${ref%.fa}.mmi ${srr_id}_trim_1.fastq.gz ${srr_id}_trim_2.fastq.gz > ${alignout}/${srr_id}.sam
        # bowtie2 -x hg19_index -1 ${srr_id}_1.fastq.gz -2 ${srr_id}_2.fastq.gz -S ${srr_id}.sam
    else
        # Single-end alignment
        minimap2 -t $THREADS -ax sr ${ref%.fa}.mmi ${srr_id}_trim.fastq.gz > ${alignout}/${srr_id}.sam
        # bowtie2 -x hg19_index -U ${srr_id}.fastq.gz -S ${srr_id}.sam
    fi
    check_error
    echo -e "\e[1;34mAlignment completed.\e[0m"
}

# SAM to BAM conversion
function convert_sam_to_bam() {
    local sam_file=$1
    echo -e "\n\t\t\e[1;32m SAM TO BAM CONVERSION \e[0m\n"
    samtools view -@ $THREADS -bS $sam_file > ${sam_file%.sam}.bam
    check_error
    echo -e "\e[1;34mSAM to BAM conversion completed.\e[0m"
}

# Sorting BAM
function sort_bam() {
    local bam_file=$1
    echo -e "\n\t\t\e[1;32m SORTING BAM \e[0m\n"
    samtools sort -@ $THREADS $bam_file -o ${bam_file%.bam}_sorted.bam
    check_error
    echo -e "\e[1;34mBAM sorting completed.\e[0m"
}

# Indexing BAM
function index_bam() {
    local bam_file=$1
    echo -e "\n\t\t\e[1;32m INDEXING BAM \e[0m\n"
    samtools index -@ $THREADS $bam_file
    check_error
    echo -e "\e[1;34mBAM indexing completed.\e[0m"
}

# Mark duplicates
function mark_duplicates() {
    local bam_file=$1
    echo -e "\n\t\t\e[1;32m MARKING DUPLICATES \e[0m\n"
    java -jar ${picard_jar} MarkDuplicates INPUT=${bam_file} OUTPUT=${bam_file%.bam}_dedup.bam METRICS_FILE=${bam_file%.bam}_metrics.txt
    check_error
    echo -e "\e[1;34mDuplicate marking completed.\e[0m"
}

# Add or replace read groups
function replace_readgroup() {
    local bam_file=$1
    local out_file=$2
    local name=$3

    java -jar ${picard_jar} AddOrReplaceReadGroups -I ${bam_file} -O ${out_file} -SORT_ORDER coordinate -RGID foo -RGPL illumina -RGLB bar -RGSM $name -CREATE_INDEX True -RGPU unit1
    check_error
}

function seqdict() {
    local ref=$1
    java -jar ${gatk_jar} CreateSequenceDictionary -R ${ref} -O ${ref%.fa}.dict
}

# haplotype caller for GVCF

function run_haplotype() {
    local ref=$1
    local tumor_bam=$2
    local normal_bam=$3
    local variants=$4

    echo -e "\n\t\t\e[1;32m RUNNING HAPLOTYPE CALLER FOR GAMETIC VARIANTS \e[0m\n"

    java -jar ${gatk_jar} --java-options "-Xmx16g" HaplotypeCaller -R ${ref} -I ${tumor_bam} -I ${normal_bam} -O ${variants}_haplotype.vcf -ERC GVCF
    check_error
 echo -e "\e[1;34m Haplotype Gametic variant calling completed.\e[0m"
}

# Run Mutect2 for somatic SNVs and indels
function run_mutect2() {
    local ref=$1
    local tumor_bam=$2
    local normal_bam=$3
    local tumor_sample=$4
    local normal_sample=$5
    local variants=$6
    echo -e "\n\t\t\e[1;32m RUNNING MUTECT2 FOR SOMATIC VARIANTS \e[0m\n"

    java -jar ${gatk_jar} Mutect2 -R ${ref} -I $tumor_bam -I $normal_bam --tumor-sample $tumor_sample --normal-sample $normal_sample -O ${variants}_somatic.vcf --native-pair-hmm-threads $THREADS --java-options "-Xmx16g"
    check_error
    echo -e "\e[1;34mMutect2 somatic variant calling completed.\e[0m"
}

# Filter somatic variants
function filter_variants() {
    local vcf_file=$1
    local ref=$2
    echo -e "\n\t\t\e[1;32m FILTERING SOMATIC VARIANTS \e[0m\n"
    java -jar ${gatk_jar} FilterMutectCalls \
        -V $vcf_file \
        -R $ref \
        -O ${vcf_file%.vcf}_filtered.vcf
    check_error
    echo -e "\e[1;34mSomatic variant filtering completed.\e[0m"
}

### WOn't work without 17GB downloaded file, with database you get mysql error
function annotate_variants() {
    local vcf_file=$1
    ./ensembl-vep/vep -i $vcf_file -o ${vcf_file%.vcf}_annotated.vcf --cache --offline --vcf --symbol --fork $THREADS
    echo -e "\n\t\t\e[1;32m ANNOTATING VARIANTS USING VEP \e[0m\n"
    check_error
    echo -e "\e[1;34mVariant annotation completed.\e[0m"
}

# Annotate variants using VEP
function anno_variants() {
    # refer: https://cloufield.github.io/GWASTutorial/07_Annotation/#annotation
    local vcf_file=$1
    echo -e "\n\t\t\e[1;32m ANNOTATING VARIANTS USING Annovar \e[0m\n"

    perl ${annovar}/table_annovar.pl ${vcf_file} ${humandb} -buildver hg19 \
         # choose only protocol which has saved DB
        -protocol refGene,avsnp150,exac03,clinvar_20210501,dbnsfp42a,gnomad211_exome,gnomad211_genome,cadd \
        -operation g,f,f,f,f,f,f,f -nastring . \
        -remove \
        -out ${vcf_file%.vcf}_annotated.vcf \
        -vcfinput --thread $THREADS

    check_error
    echo -e "\e[1;34mVariant annotation completed.\e[0m"
}


# Generate QC metrics
function generate_qc_metrics() {
    local vcf_file=$1
    echo -e "\n\t\t\e[1;32m GENERATING SOMATIC VARIANT QC METRICS \e[0m\n"
    java -jar ${gatk_jar} CollectVariantCallingMetrics \
        -I $vcf_file \
        -DBSNP $DBSNP_VCF \
        -O ${vcf_file%.vcf}_qc_metrics
    check_error
    echo -e "\e[1;34mQC metrics generation completed.\e[0m"
}

# Generate MultiQC report
function generate_multiqc_report() {
    echo -e "\n\t\t\e[1;32m GENERATING MULTIQC REPORT \e[0m\n"
    multiqc .
    check_error
    echo -e "\e[1;34mMultiQC report generation completed.\e[0m"
}

# Parse command-line arguments
while getopts "t:n:r:T:N:p:" opt; do
    case $opt in
    t) TUMOR_SAMPLE=${OPTARG} TUMOR_SRR_ID=${OPTARG} ;;   # Tumor sample SRR id name
    n) NORMAL_SAMPLE=${OPTARG} NORMAL_SRR_ID=${OPTARG} ;;  # Normal sample name
    r) REF_GENOME=${OPTARG} ;;    # Reference genome
    p) PAIRED_END=${OPTARG} ;;    # Whether paired-end or not (true or false)
    *) echo "Invalid option: -$OPTARG" >&2; exit 1 ;;
    esac
done

# Check required arguments
if [[ -z "$TUMOR_SAMPLE" || -z "$NORMAL_SAMPLE" || -z "$REF_GENOME" || -z "$TUMOR_SRR_ID" || -z "$NORMAL_SRR_ID" || -z "$PAIRED_END" ]]; then
    echo "Usage: $0 -t <tumor_sample_srrid> -n <normal_sample_srrid> -r <reference_genome> -p <paired_end(true/false)>"
    exit 1
fi

# Run the pipeline
function run_pipeline() {
    print_header

    # done
    quality_check "${datadir}/${TUMOR_SRR_ID}" "$PAIRED_END"
    quality_check "${datadir}/${NORMAL_SRR_ID}" "$PAIRED_END"

    # Pre-process tumor sample
    echo -e "\n\t\t\e[1;32m ALIGNING TUMOR SAMPLE \e[0m\n"
    align_reads "$REF_GENOME" "${datadir}/$TUMOR_SRR_ID" "$PAIRED_END"

    # Pre-process normal sample
    echo -e "\n\t\t\e[1;32m ALIGNING NORMAL SAMPLE \e[0m\n"
    align_reads "$REF_GENOME" "${datadir}/$NORMAL_SRR_ID" "$PAIRED_END"

    convert_sam_to_bam "${alignout}/${TUMOR_SRR_ID}.sam"
    sort_bam "${alignout}/${TUMOR_SRR_ID}.bam"
    index_bam "${alignout}/${TUMOR_SRR_ID}_sorted.bam"
    mark_duplicates "${alignout}/${TUMOR_SRR_ID}_sorted.bam"

    convert_sam_to_bam "${alignout}/${NORMAL_SRR_ID}.sam"
    sort_bam "${alignout}/${NORMAL_SRR_ID}.bam"
    index_bam "${alignout}/${NORMAL_SRR_ID}_sorted.bam"
    mark_duplicates "${alignout}/${NORMAL_SRR_ID}_sorted.bam"

    # todo work on naming
    replace_readgroup "${alignout}/${TUMOR_SRR_ID}_sorted.bam" "${alignout}/${TUMOR_SRR_ID}_rg.bam" "Tumor_sample"
    replace_readgroup "${alignout}/${NORMAL_SRR_ID}_sorted.bam" "${alignout}/${NORMAL_SRR_ID}_rg.bam" "Normal_sample"

    seqdict "${REF_GENOME}"

    # run haplotype caller
    run_haplotype "$REF_GENOME" "${alignout}/${TUMOR_SRR_ID}_rg.bam" "${alignout}/${NORMAL_SRR_ID}_rg.bam" "${TUMOR_SRR_ID}_${NORMAL_SRR_ID}"

    # Run Mutect2 for somatic variant calling
    run_mutect2 "$REF_GENOME" "${alignout}/${TUMOR_SRR_ID}_rg.bam" "${alignout}/${NORMAL_SRR_ID}_rg.bam" "Tumor_sample" "Normal_sample" "${TUMOR_SRR_ID}_${NORMAL_SRR_ID}"

    # Filter somatic variants
    filter_variants "${TUMOR_SRR_ID}_${NORMAL_SRR_ID}"_somatic.vcf "$REF_GENOME"

    # Annotate variants
    # annotate_variants "${TUMOR_SAMPLE}_${NORMAL_SAMPLE}_somatic_filtered.vcf" # vep does not work without local database
    # uses annovar
    anno_variants "${TUMOR_SRR_ID}_${NORMAL_SRR_ID}"_somatic_filtered.vcf

    # Generate QC metrics
    generate_qc_metrics "${TUMOR_SRR_ID}_${NORMAL_SRR_ID}"_somatic_filtered.vcf

    # Generate MultiQC report
    generate_multiqc_report

    echo -e "\n\t\t\e[1;32m PIPELINE COMPLETED SUCCESSFULLY \e[0m\n"
}

run_pipeline

# Start the pipeline
# run: bash FILENAME.sh -r hg19 -n norm -t tumor -p true
# run: bash FILENAME.sh -r hg19.fa -n SRR705 -t SRR101 -p true

# expected files
# - working dir
# -- FILENAME.sh (script file)
# -- hg19.fa
# -- ${alignout}
# --- SRR705.sam, .bam....
