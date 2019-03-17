#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=10-00:00:00
#SBATCH --output=ProtTest_OUT.txt
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="ProtTest"

module load java
cd /rhome/jarias/bigdata/ProtTest/prottest-3.4.2/

java -jar prottest-3.4.2.jar \
-i /rhome/jarias/bigdata/ProtTest/SpeciesTreeAlignment.fa \
-o Acanth1_protout \
-all-distributions -F -AIC -BIC -t2 -tc 0.5 -threads 16 -verbose
