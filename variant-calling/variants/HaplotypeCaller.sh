#!/bin/bash
# Slurm options
#SBATCH --job-name="varCalls"
#SBATCH --chdir=.
#SBATCH --time=3:00:00
#SBATCH --mem=2G
#SBATCH --partition=pcourseb
#SBATCH --output=hapCall_%j.out
#SBATCH --error=hapCall_%j.err


module load GATK/4.2.6.1-GCCcore-10.3.0-Java-11
module load Java/17.0.6


gatk HaplotypeCaller -R  ../refIdx/chr14.fa -I BT012.dedup.bam -I BT134.dedup.bam  -O BT.vcf