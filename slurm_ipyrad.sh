#!/bin/bash

#SBATCH --nodes 1
#SBATCH --ntasks=16
#SBATCH --time 20-00:00:00
#SBATCH --mem=200G
#SBATCH --job-name="ipyradfull"
#SBATCH --output=ipyrad_outputfull.txt
#SBATCH --mail-user=robpcom3@gmail.com
#SBATCH --mail-type=ALL
#SBATCH -p highmem

## Activate ipyrad
source activate myipyrad

## Change into the directory where your parameter file resides
cd $HOME/bigdata/FullBarFastq

## Call ipyrad on your params file
ipyrad -p fullparamx.txt -s 1234567
