#!/bin/bash

#SBATCH --nodes 1
#SBATCH --ntasks=16
#SBATCH --time 1-00:00:00
#SBATCH --mem=256G
#SBATCH --job-name="ipyradfull"
#SBATCH --output=ipyrad_outputfull.txt
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH -p batch

## Activate ipyrad
source activate myipyrad

## Change into the directory where your parameter file resides
cd /bigdata/GenBankRawData/PsuedoRAD/

## Call ipyrad on your params file
ipyrad -p iPyrad_Params.txt -s 1234567
