#!/bin/bash

echo "Downloading Input Data for Somatic workflow (if it doesn't already exist)"
GCP_PATH="https://storage.googleapis.com"
#Edit the below DATA_PATH to where you want the data to reside in your shared file system
DATA_PATH="/cluster_share/data/RefArch_Broad_data/"

mkdir -p $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/
cd $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0ENM.1.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0ENM.2.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0ENM.3.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0ENM.5.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0ENM.6.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0ENM.7.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0UK2.4.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0UK2.8.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0UW5.4.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143T/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143T/D0UW5.8.unmapped.bam

mkdir -p $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/
cd $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/C09DF.1.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/C09DF.2.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0EN0.4.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0EN0.7.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0EN0.8.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0UK2.1.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0UK2.2.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0UK2.6.unmapped.bam
wget -nc -v -P $DATA_PATH/gatk-test-data/wgs_ubam/HCC1143BL/ $GCP_PATH/gatk-test-data/wgs_ubam/HCC1143BL/D0UK2.7.unmapped.bam

echo "Downloading Reference Data for Somatic workflow (if it doesn't already exist)"
cd $DATA_PATH/broad-references/hg38/v0/
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.contam.UD
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.contam.bed
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.contam.mu
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/wgs_calling_regions.hg38.interval_list
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.dict
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.fai
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.64.alt
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.64.sa
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.64.amb
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.64.bwt
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.64.ann
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.fasta.64.pac
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.known_indels.vcf.gz
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz.tbi
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.known_indels.vcf.gz.tbi
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/Homo_sapiens_assembly38.dbsnp138.vcf.idx
wget -nc -v -P $DATA_PATH/broad-references/hg38/v0/ $GCP_PATH/broad-references/hg38/v0/wgs_coverage_regions.hg38.interval_list

mkdir -p $DATA_PATH/gatk-test-data/cnv/somatic/
cd $DATA_PATH/gatk-test-data/cnv/somatic/
wget -nc -v -P $DATA_PATH/gatk-test-data/cnv/somatic/ $GCP_PATH/gatk-test-data/cnv/somatic/somatic-hg38_af-only-gnomad.hg38.AFgt0.02.interval_list
wget -nc -v -P $DATA_PATH/gatk-test-data/cnv/somatic/ $GCP_PATH/gatk-test-data/cnv/somatic/PoN_4.0_WGS_for_public.pon.hdf5
wget -nc -v -P $DATA_PATH/gatk-test-data/cnv/somatic/ $GCP_PATH/gatk-test-data/cnv/somatic/PoN_4.0_WGS_for_public.25k_bp.pon.hdf5

mkdir -p $DATA_PATH/gatk-best-practices/somatic-hg38/
cd $DATA_PATH/gatk-best-practices/somatic-hg38/
wget -nc -v -P $DATA_PATH/gatk-best-practices/somatic-hg38/ $GCP_PATH/gatk-best-practices/somatic-hg38/af-only-gnomad.hg38.vcf.gz
wget -nc -v -P $DATA_PATH/gatk-best-practices/somatic-hg38/ $GCP_PATH/gatk-best-practices/somatic-hg38/af-only-gnomad.hg38.vcf.gz.tbi
wget -nc -v -P $DATA_PATH/gatk-best-practices/somatic-hg38/ $GCP_PATH/gatk-best-practices/somatic-hg38/small_exac_common_3.hg38.vcf.gz
wget -nc -v -P $DATA_PATH/gatk-best-practices/somatic-hg38/ $GCP_PATH/gatk-best-practices/somatic-hg38/small_exac_common_3.hg38.vcf.gz.tbi

mkdir -p $DATA_PATH/gatk-test-data/mutect2/
cd $DATA_PATH/gatk-test-data/mutect2/
wget -nc -v -P $DATA_PATH/gatk-test-data/mutect2/ $GCP_PATH/gatk-test-data/mutect2/M2PoN_4.0_WGS_for_public.vcf
wget -nc -v -P $DATA_PATH/gatk-test-data/mutect2/ $GCP_PATH/gatk-test-data/mutect2/M2PoN_4.0_WGS_for_public.vcf.idx

mkdir -p $DATA_PATH/dsde-data-na12878-public/
cd $DATA_PATH/dsde-data-na12878-public/
wget -nc -v -P $DATA_PATH/dsde-data-na12878-public/ $GCP_PATH/dsde-data-na12878-public/NA12878.hg38.reference.fingerprint.vcf

mkdir -p $DATA_PATH/gatk-best-practices/somatic-b37/
cd $DATA_PATH/gatk-best-practices/somatic-b37/
wget -nc -v -P $DATA_PATH/gatk-best-practices/somatic-b37/ $GCP_PATH/gatk-best-practices/somatic-b37/oncotator_v1_ds_April052016.tar.gz

