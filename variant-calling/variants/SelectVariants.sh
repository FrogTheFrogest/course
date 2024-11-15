#!/bin/bash
# Slurm options
#SBATCH --job-name="selectSNVs"
#SBATCH --chdir=.
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --partition=pcourseb
#SBATCH --output=selectVar_%j.out
#SBATCH --error=selectVar_%j.err

module load GATK/4.2.6.1-GCCcore-10.3.0-Java-11
module load Java/17.0.6

gatk SelectVariants -V BT.vcf -select-type INDEL -O BT.indels.vcf
gatk SelectVariants -V BT.vcf -select-type SNP -O BT.snps.vcf