#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=5-00:00:00    
#SBATCH --output=CraVe_spade_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="<SPECIES>_spade"
#SBATCH -p batch

# This is ONLY for SPAdes Version 3.12.0
# You MUST have fastq.gz files.
# Used this k-mer distribution because it is recommended by the SPAdes manual
# Ensure that you are using RAW data, though you might be able to get processed files to work.

module load SPAdes
srun spades.py -k 21,33,55,77,99,127 -1 <FILE 1>.fastq.gz -2 <FILE 2>.fastq.gz -o spades_output

# This is only for Paired End reads. If you don't have Paired End reads, go here and make the approriate changes to this:
# http://cab.spbu.ru/files/release3.12.0/manual.html
