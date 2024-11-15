#!/bin/bash
# Slurm options
#SBATCH --mail-user=<your.email@example.com>
#SBATCH --mail-type=fail,end
#SBATCH --job-name="idxDedup"
#SBATCH --chdir=.
#SBATCH --time=1:00:00
#SBATCH --mem=2G
#SBATCH --partition=pcourseb
#SBATCH --output=idxDedup_%j.out
#SBATCH --error=idxDedup_%j.err

module load SAMtools/1.13-GCC-10.3.0

samtools index BT134.dedup.bam
samtools index BT012.dedup.bam