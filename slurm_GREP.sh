#!/bin/bash -l

#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --mem-per-cpu=16GB
#SBATCH --time=1-00:00:00
#SBATCH --output=GREP_RAD_OUT
#SBATCH --mail-user=josh.d.arias@gmail.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="GREP_RAD"
#SBATCH -p batch

cd /rhome/jarias/bigdata/GenBankRawData

grep -a --no-group-separator -A 2 -B 1 "^CAATTC" AcLeu_1.fastq > PsuedoRAD/RAD_AcLeu_CB.fq
grep -a --no-group-separator -A 2 -B 1 "^CAATTC" AcLeu_2.fastq >> PsuedoRAD/RAD_AcLeu_CB.fq

grep -a --no-group-separator -A 2 -B 1 "^CAATTC" AndPa_1.fastq > PsuedoRAD/RAD_AndPa_CB.fq
grep -a --no-group-separator -A 2 -B 1 "^CAATTC" AndPa_2.fastq >> PsuedoRAD/RAD_AndPa_CB.fq

grep -a --no-group-separator -A 2 -B 1 "^CAATTC" AviMa_1.fastq > PsuedoRAD/RAD_AviMa_CB.fq
grep -a --no-group-separator -A 2 -B 1 "^CAATTC" AviMa_2.fastq >> PsuedoRAD/RAD_AviMa_CB.fq

grep -a --no-group-separator -A 2 -B 1 "^CAATTC" RuSim1_1.fastq > PsuedoRAD/RAD_RuSim_CB.fq
grep -a --no-group-separator -A 2 -B 1 "^CAATTC" RuSim1_2.fastq >> PsuedoRAD/RAD_RuSim_CB.fq
grep -a --no-group-separator -A 2 -B 1 "^CAATTC" RuSim2_1.fastq >> PsuedoRAD/RAD_RuSim_CB.fq
grep -a --no-group-separator -A 2 -B 1 "^CAATTC" RuSim2_2.fastq >> PsuedoRAD/RAD_RuSim_CB.fq

grep -a --no-group-separator -A 2 -B 1 "^CAATTC" BarOe_P1.fastq > PsuedoRAD/RAD_BarOe_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BarOe_P2.fastq.gz >> PsuedoRAD/RAD_BarOe_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BarRo_P1.fastq.gz > PsuedoRAD/RAD_BarRo_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BarRo_P2.fastq.gz >> PsuedoRAD/RAD_BarRo_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BarST_P1.fastq.gz > PsuedoRAD/RAD_BarST_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BarST_P2.fastq.gz >> PsuedoRAD/RAD_BarST_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BleDi_P1.fastq.gz > PsuedoRAD/RAD_BleDi_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BleDi_P2.fastq.gz >> PsuedoRAD/RAD_BleDi_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BleSp_P1.fastq.gz > PsuedoRAD/RAD_BleSp_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" BleSp_P2.fastq.gz >> PsuedoRAD/RAD_BleSp_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" CraVe_P1.fastq.gz > PsuedoRAD/RAD_CraVe_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" CraVe_P2.fastq.gz >> PsuedoRAD/RAD_CraVe_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" JuPac_P1.fastq.gz > PsuedoRAD/RAD_JuPac_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" JuPac_P2.fastq.gz >> PsuedoRAD/RAD_JuPac_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" LaEle_P1.fastq.gz > PsuedoRAD/RAD_LaEle_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" LaEle_P2.fastq.gz >> PsuedoRAD/RAD_LaEle_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" LeDul_P1.fastq.gz > PsuedoRAD/RAD_LeDul_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" LeDul_P2.fastq.gz >> PsuedoRAD/RAD_LeDul_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" LoPub_P1.fastq.gz > PsuedoRAD/RAD_LoPub_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" LoPub_P2.fastq.gz >> PsuedoRAD/RAD_LoPub_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" NeuAf_P1.fastq.gz > PsuedoRAD/RAD_NeuAf_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" NeuAf_P2.fastq.gz >> PsuedoRAD/RAD_NeuAf_CB.fq

zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" WhiLo_P1.fastq.gz > PsuedoRAD/RAD_WhiLo_CB.fq
zgrep -a --no-group-separator -A 2 -B 1 "^CAATTC" WhiLo_P2.fastq.gz >> PsuedoRAD/RAD_WhiLo_CB.fq
