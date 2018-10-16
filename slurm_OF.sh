#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=OF_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="OF_Test"
#SBATCH -p batch

module load diamond
## You need to get mmseqs2 and hook it to $PATH. This next line	does it	for you, but you have to provide the correct working directory.
export PATH=$PATH:`pwd`/mmseqs2/bin/
module load mcl
module load fastme

srun /rhome/jarias/bigdata/OrthoFinder-2.2.7/orthofinder -f /rhome/jarias/bigdata/OrthoFinder-2.2.7/<FASTA FILE DIRECTORY> -S diamond -t 16
date
