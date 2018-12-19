#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=<SPECIES>_CDHIT_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="<SPECIES>_CDHIT"
#SBATCH -p batch

module load cd-hit/4.6.4

# This was the format used with Global Sequence Identity set to 90%. 
cd-hit -i <SPECIESPATH> -o <SPECIES>_CDHIT90 -T 16

# These were other options that we did not end up using:
# cd-hit -i <SPECIESPATH> -c 1.00 -o <SPECIES>_CDHIT100 -T 16
# cd-hit-2d -i <SPECIESPATH> -i2 <2ndSPECIESPATH> -o <SPECIES>_CDHIT2D90 -T 16
# cd-hit-2d -i <SPECIESPATH> -i2 <2ndSPECIESPATH> -c 1.00 -o <SPECIES>_CDHIT2D100 -T 16
