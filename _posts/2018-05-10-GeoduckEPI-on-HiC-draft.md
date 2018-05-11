As a better assembly is coming online for the Geoduck, we have started to look at Bismark mapping of prior samples.

For a refresh there are 50 samples (or 53)

I did a run on mox

```
#SBATCH --workdir=/gscratch/srlab/sr320/analyses/0505

source /gscratch/srlab/programs/scripts/paths.sh

find /gscratch/srlab/sr320/data/0504/EPI-*R1* \
| xargs basename -s _L005_R1_001.fastq.gz | xargs -I{} /gscratch/srlab/programs/Bismark-0.19.0/bismark \
--path_to_bowtie /gscratch/srlab/programs/bowtie2-2.1.0 \
-p 28 \
-multicore 4 \
/gscratch/srlab/sr320/data/hi-c \
-1 /gscratch/srlab/sr320/data/0504/{}_L005_R1_001.fastq.gz \
-2 /gscratch/srlab/sr320/data/0504/{}_L005_R2_001.fastq.gz
```

About 17 completed

```
0505/EPI-103_S27_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	28.6% 
0505/EPI-104_S28_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	27.8% 
0505/EPI-111_S29_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	27.6% 
0505/EPI-113_S30_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	27.8% 
0505/EPI-119_S31_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	27.9% 
0505/EPI-120_S32_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	29.2% 
0505/EPI-127_S33_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	29.3% 
0505/EPI-128_S34_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	28.9% 
0505/EPI-135_S35_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	25.4% 
0505/EPI-135WG_S42_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	26.8% 
0505/EPI-136_S36_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	25.1% 
0505/EPI-143_S37_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	27.4% 
0505/EPI-145_S38_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	28.3% 
0505/EPI-41_S38_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	19.5% 
0505/EPI-42_S39_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	22.2% 
0505/EPI-43_S40_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	17.5% 
0505/EPI-44_S41_L005_R1_001_bismark_bt2_PE_report.txt:Mapping efficiency:	7.9% 
```

Not clear if this was a system error or not, thus running a `-u 10000` to see if I can get all samples processed. 




