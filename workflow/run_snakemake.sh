#!/bin/bash
#SBATCH -p main
#SBATCH -n4
#SBATCH --time=08:00:00

source ~/miniconda3/etc/profile.d/conda.sh

conda activate transomics

snakemake -p all --use-conda --cores 8
