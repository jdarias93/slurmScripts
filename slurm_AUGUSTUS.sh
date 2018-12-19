#!/bin/bash -l

#SBATCH --nodes=1    
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=<SPECIES>_AUGUSTUS_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="<SPECIES>_AUGUSTUS"
#SBATCH -p batch

# Max DNA piece size picked according to largest contig amount, held by NeuAf at the time of writing this.
# For help on modifying this, consult these resources:
# https://sites.google.com/site/yijyunluo/Bioinformatics/Gene-prediction
# http://avrilomics.blogspot.com/2013/04/training-augustus-gene-finding-software.html
# http://augustus.gobics.de/binaries/README.TXT

module load augustus/3.1
srun augustus --genemodel=partial --maxDNAPieceSize=840000 --protein=on --outfile=<SPECIES>_AT_AUGUSTUS.gff --species=arabidopsis <queryfilename.fasta>
srun getAnnoFasta.pl <SPECIES>_AT_AUGUSTUS.gff # Makes FASTA protein file from .gff file
srun augustus --genemodel=partial --maxDNAPieceSize=840000 --protein=on --outfile=<SPECIES>_SL_AUGUSTUS.gff --species=tomato <queryfilename.fasta>
srun getAnnoFasta.pl <SPECIES>_SL_AUGUSTUS.gff
