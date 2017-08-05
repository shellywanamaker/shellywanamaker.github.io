In preparation for new proteomic analysis here is a transcriptome from the _NovaSeq_.

What I ran on Hyak.

```
#!/bin/bash
## Job Name
#SBATCH --job-name=Geoduck-trinity-01
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes (We only get 1, so this is fixed)
#SBATCH --nodes=1   
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=90:30:00
## Memory per node
#SBATCH --mem=500G
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/srlab/sr320/analyses/0804_1818

 
source /gscratch/srlab/programs/scripts/paths.sh

Trinity \
--seqType fq \
--SS_lib_type RF \
--left /gscratch/srlab/sr320/data/NR021_S8_L001_R1_001.fastq,/gscratch/srlab/sr320/data/NR021_S8_L002_R1_001.fastq \
--right /gscratch/srlab/sr320/data/NR021_S8_L001_R2_001.fastq,/gscratch/srlab/sr320/data/NR021_S8_L002_R2_001.fastq \
--CPU 50 --trimmomatic --max_memory 500G
```

The [slurm](http://owl.fish.washington.edu/halfshell/bu-mox/analyses/0804_1818/slurm-54893.out). This is what would be spit out in terminal while running. With Trinity, there is a lot. 


The fasta file (179M).

`http://owl.fish.washington.edu/halfshell/bu-mox/analyses/0804_1818/trinity_out_dir/0804_Pgen_larvae.fasta`

If you want to see the rest of the output [look here](http://owl.fish.washington.edu/halfshell/bu-mox/analyses/0804_1818/trinity_out_dir/).

