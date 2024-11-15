#!/bin/bash
# Slurm options
#SBATCH --job-name="mapping"
#SBATCH --chdir=.
#SBATCH --time=3:00:00
#SBATCH --mem-per-cpu=2G
#SBATCH --cpus-per-task=8
#SBATCH -p pcourseb
#SBATCH --output=mapping_%j.out
#SBATCH --error=mapping_%j.err

module load BWA/0.7.17-GCC-10.3.0
module load SAMtools/1.13-GCC-10.3.0

bwa mem -t 8 -M -R '@RG\tID:2024111301\tPL:illumina\tPU:HHV75DSXX.4\tCN:UBern\tLB:BT134-LIB\tSM:BT012'  ../refIdx/chr14.fa  BT012_R1.fastq.gz BT012_R2.fastq.gz | samtools sort -@8 -m 5G  -o BT012.sorted.bam -
samtools index BT012.sorted.bam