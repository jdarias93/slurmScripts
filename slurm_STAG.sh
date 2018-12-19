#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=STAG_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="STAG"
#SBATCH -p batch

module load fastme

python stag.py \
/Path/to/OrthoFinder/SpeciesIDs.txt \
/Path/to/OrthoFinderOutput/Orthologues/Gene_Trees/
