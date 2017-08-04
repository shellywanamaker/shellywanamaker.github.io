
Running Trinity on Mox. Geoduck larvae.

Eventually got to 

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
#SBATCH --workdir=/gscratch/srlab/sr320/analyses/

 
source /gscratch/srlab/programs/scripts/paths.sh

Trinity \
--seqType fq \
--left /gscratch/srlab/sr320/data/NR021_R1_comb.fastq \
--right /gscratch/srlab/sr320/data/NR021_R1_comb.fastq \
--CPU 50 --trimmomatic --max_memory 500G

```

**BUT JUST REALIZED ERROR**

Can you see it?

---
Now have to figure out how to kill job

```
[sr320@mox1 analyses]$ squeue | grep srlab
             54793     srlab Geoduck-    sr320  R       8:34      1 n2187
[sr320@mox1 analyses]$ scancel 54793
[sr320@mox1 analyses]$ squeue | grep srlab
[sr320@mox1 analyses]$ 

```

---
```
[sr320@mox1 jobs]$ sbatch -p srlab -A srlab /gscratch/srlab/sr320/jobs/geoduck-trinity-01.sh 
Submitted batch job 54797
```

AND here is 50 minutes of terminal that got me there.

<iframe src="https://uw.hosted.panopto.com/Panopto/Pages/Embed.aspx?id=47f20c95-3851-465e-9d4c-64ff01bb1387&v=1" width="720" height="405" style="padding: 0px; border: 1px solid #464646;" frameborder="0" allowfullscreen></iframe>
