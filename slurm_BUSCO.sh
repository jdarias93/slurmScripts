#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=<SPECIES>_BUSCO_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="<SPECIES>_BUSCO"
#SBATCH -p batch

# This is ONLY for BUSCO version 3.0.2.

module load busco/3.0.2

# You need to set up an AUGUSTUS path that you have permission to edit--the HPCC global AUGUSTUS install will not let you
# The workaround is to copy the HPCC augustus build to your local path:
module unload augustus/3.3 # Releases global install hook up
export PATH="/path/to/BUSCO/augustus3.3/bin:$PATH" # Sets new path variables for your local augustus install
export PATH="/path/to/bigdata/BUSCO/augustus3.3/scripts:$PATH"
export AUGUSTUS_CONFIG_PATH="/path/to/bigdata/BUSCO/augustus3.3/config/"

srun run_BUSCO.py -i <SPECIES_PATH> -o <OUTPUT_NAME> -l /path/to/BUSCOdb -m geno -c 16

hostname
date
