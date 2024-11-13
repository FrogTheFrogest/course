#!/bin/bash
#SBATCH -p pcourseb
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --mem 10G
#SBATCH -t 0-2:00
#SBATCH -o test4.out
#SBATCH -e test5.err

hostname
date
sleep 600
date
