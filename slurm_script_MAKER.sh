#!/bin/bash -l

#SBATCH --nodes=2    # this asks for 2 compute nodes
#SBATCH --ntasks=4   # this asks for 4 cpus total for the whole job, which will be broken up over the two nodes
#SBATCH --mem-per-cpu=5GB  # this is asking for 5GB for each cpu, here that means 5 x 4 = 20GB total
#SBATCH --time=10-00:00:00 # ok    
#SBATCH --output=LaEle_MKR1.stdout  # ok
#SBATCH --mail-user=josh.d.arias@gmail.com  # ok
#SBATCH --mail-type=ALL   # ok
#SBATCH --job-name="LaEle_MAKER"  # ok
#SBATCH -p intel,batch  # this will run on the intel or batch parttition which ever is open first - change this to highmem only if your total ram is over 100GB or you run in to RAM errors.

# this is the actual MAKER run:
module unload openmpi
module unload perl
module load maker
srun maker -q -base LaEle_MKR1

date

hostname

env
