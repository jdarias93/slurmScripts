#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=5-00:00:00    
#SBATCH --output=CraVe_spade_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="CraVe_spade"
#SBATCH -p batch

# You MUST have fastq files.

module load SPAdes
srun spades.py -k 21,33,55,77,99,127 -1 CraVe_P1.fastq.gz -2 CraVe_P2.fastq.gz -o spades_output_092418

hostname
date
