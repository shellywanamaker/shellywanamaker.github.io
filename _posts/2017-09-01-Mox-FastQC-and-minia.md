Playing around a bit with Mox (crippled by lack of disk space).
Ran FastQC

```
#!/bin/bash
## Job Name
#SBATCH --job-name=fastqc-NS
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes (We only get 1, so this is fixed)
#SBATCH --nodes=1   
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=24:00:00
## Memory per node
#SBATCH --mem=500G
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/sr320/analyses/0901

 
source /gscratch/srlab/programs/scripts/paths.sh

/gscratch/srlab/programs/FastQC/fastqc \
-t 28 \
/gscratch/scrubbed/sr320/AD002_S9_L001_R1_001.fastq.gz 

```

and minia (note location)

```
#!/bin/bash
## Job Name
#SBATCH --job-name=minia
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes (We only get 1, so this is fixed)
#SBATCH --nodes=1   
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=100:00:00
## Memory per node
#SBATCH --mem=500G
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/sr320/analyses/0901b

 
source /gscratch/srlab/programs/scripts/paths.sh

/gscratch/srlab/sr320/programs/minia-v2.0.7-bin-Linux/bin/minia \
-nb-cores 28 \
-max-memory 500000 \
-in /gscratch/scrubbed/sr320/AD002_S9_L001_R2_001.fastq.gz \
-out-dir /gscratch/scrubbed/sr320/
```


