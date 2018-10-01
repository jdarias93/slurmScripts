#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=5-00:00:00    
#SBATCH --output=<SPECIES>_BUSCO_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="<SPECIES>_BUSCO"
#SBATCH -p batch

# This is ONLY for BUSCO version 3.0.2.

module load BUSCO/3.0.2
srun run_BUSCO.py -i <FASTA FILE> -o <SPECIES> -l /rhome/jarias/bigdata/BUSCO/embryophyta_odb9.tar.gz -m geno -c 16

hostname
date
