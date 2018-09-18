#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=1-00:00:00    
#SBATCH --output=NeuAf_spade_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="NeuAf_spade"
#SBATCH -p batch

# Turned off the BayesHammer error correction tool with only-assembler
# Will try both to see if there's a difference.

module load SPAdes
srun spades.py --careful --only-assembler --12 NeuAf_Interlaced.fasta -o spades_output

hostname
date
