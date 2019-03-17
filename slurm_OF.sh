#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=OF_slurmout
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="OF_Compendium"
#SBATCH -p batch

# mmseqs2 was not available in the UCR HPCC at the time of writing, so we had to source it from here: https://github.com/soedinglab/mmseqs2
# ... and hook it to $PATH:
export PATH=$PATH:/rhome/jarias/bigdata/OrthoFinder-2.2.7/mmseqs2/bin/

module load diamond/0.9.22
module load mafft/7.271
module load fasttree/2.1.10
module load mcl/14-137
module load fastme/2.1.5
module load RAxML/8.2.12

# Run 1: Diamond + Dendroblast + FastME
/rhome/jarias/bigdata/OrthoFinder-2.2.7/orthofinder -f /Path/to/OrthoFinderInputs/ -S diamond -t 16

# Run 2: Diamond + MAFFT + FastTree
/rhome/jarias/bigdata/OrthoFinder-2.2.7/orthofinder -f /Path/to/OrthoFinderInputs/ -S diamond -M msa -t 16

# Run 3: Diamond + MAFFT + RAxML (DID NOT WORK)
#/rhome/jarias/bigdata/OrthoFinder-2.2.7/orthofinder -f /Path/to/OrthoFinderInputs/ -S diamond -M msa -T raxml -t 16

