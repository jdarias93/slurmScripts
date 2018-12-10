#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=8   # this asks for 8 cpus total for the whole job, which will be broken up over the two nodes
#SBATCH --mem-per-cpu=5GB  # this is asking for 5GB for each cpu, here that means 5 x 4 = 20GB total
#SBATCH --time=10-00:00:00 # ok    
#SBATCH --output=CraVe_Velv  # ok
#SBATCH --mail-user=josh.d.arias@gmail.com  # ok
#SBATCH --mail-type=ALL   # ok
#SBATCH --job-name="CraVe_Velv"  # ok
#SBATCH -p intel,batch  # this will run on the intel or batch parttition which ever is open first - change this to highmem only if your total ram is over 100GB or you run in to RAM errors.

module load velvetoptimiser
srun VelvetOptimiser.pl -v -f '-shortPaired -fastq.gz -separate CraVe1.fastq.gz CraVe2.fastq.gz' -o '-cov_cutoff 5' -t 8
date
echo 'Science Rules!'
