#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=900GB
#SBATCH --time=30-00:00:00    
#SBATCH --output=CraVe_CDHITEST
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="CraVe_CDHITEST"
#SBATCH -p highmem

module load cd-hit
srun cd-hit-est -i CraVe_Velv_Kmer31.fasta -o CraVe_CD90.fasta -c 0.9 -n 8 -M 800000
date
