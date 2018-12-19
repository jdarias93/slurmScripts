#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=STRIDE_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="STRIDE"
#SBATCH -p batch

python stride.py -s dash \
-S Path/to/STAG_Results/UnrootedSpeciesTree.tre -d /Path/to/OrthoFinderOutput/Orthologues/Gene_Trees/
