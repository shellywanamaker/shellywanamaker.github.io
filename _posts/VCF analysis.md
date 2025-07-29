---
layout: post
title: Call variants from Apul, Peve, and Ptua RNA-seq data
author: Shelly Wanamaker
tags: methylseq nf-core EMseq rnavar coral E5
---

# Purpose
This analysis is for extracting variant data from RNAseq data using the nf-core pipeline rnavar.

# Results
- Apul
	- matrix further filtered for coverage in 80% of samples and for biallelic variants only: [](https://gannet.fish.washington.edu/metacarcinus/E5/20250722_rnavar_Apul/result/variant_calling/Apul.rnavar.merged-filtered-true-all.vcf.gz)
	- matrix filtered for quality, depth, allele freq, etc: [Apul.rnavar.merged-filtered-true.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/20250722_rnavar_Apul/result/variant_calling/Apul.rnavar.merged-filtered-true.vcf.gz)
	- matrix from merging vcfs: [Apul.rnavar.merged.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/20250722_rnavar_Apul/result/variant_calling/Apul.rnavar.merged.vcf.gz)
	- individual vcfs (in individual sample folders): [variant_calling](https://gannet.fish.washington.edu/metacarcinus/E5/20250722_rnavar_Apul/result/variant_calling/)
	- all output from rnavar: [20250722_rnavar_Apul](https://gannet.fish.washington.edu/metacarcinus/E5/20250722_rnavar_Apul)
- Peve
	- matrix further filtered for coverage in 80% of samples and for biallelic variants only: [Peve.rnavar.merged-filtered-true-all.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250722_rnavar/result/variant_calling/Peve.rnavar.merged-filtered-true-all.vcf.gz)
	- matrix filtered for quality, depth, allele freq, etc: [Peve.rnavar.merged-filtered-true.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250722_rnavar/result/variant_calling/Peve.rnavar.merged-filtered-true.vcf.gz)
	- matrix from merging vcfs: [Peve.rnavar.merged.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250722_rnavar/result/variant_calling/Peve.rnavar.merged.vcf.gz)
	- individual vcfs (in individual sample folders): [variant_calling/](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250722_rnavar/result/variant_calling/)
	- all output from rnavar: [20250722_rnavar](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250722_rnavar)
- Ptua
	- matrix further filtered for coverage in 80% of samples and for biallelic variants only: [Ptua.rnavar.merged-filtered-true-all.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Ptuahiniensis/20250721_rnavar/result/variant_calling/Ptua.rnavar.merged-filtered-true-all.vcf.gz)
	- matrix filtered for quality, depth, allele freq, etc: [Ptua.rnavar.merged-filtered-true.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Ptuahiniensis/20250721_rnavar/result/variant_calling/Ptua.rnavar.merged-filtered-true.vcf.gz)
	- matrix from merging vcfs: [Ptua.rnavar.merged.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Ptuahiniensis/20250721_rnavar/result/variant_calling/Ptua.rnavar.merged.vcf.gz)
	- individual vcfs (in individual sample folders): [variant_calling](https://gannet.fish.washington.edu/metacarcinus/E5/Ptuahiniensis/20250721_rnavar/result/variant_calling/)
	- all output from rnavar: [20250721_rnavar](https://gannet.fish.washington.edu/metacarcinus/E5/Ptuahiniensis/20250721_rnavar)

# Methods

## Run rnavar without variant annotation

#### Ptua

```
#copy fastqs
mkdir /gscratch/scrubbed/strigg/analyses/20250721_rnavar/fastq

rsync --archive --verbose --progress shellytrigg@gannet.fish.washington.edu:/volume2/web/gitrepos/urol-e5/timeseries_molecular/F-Ptua/output/01.00-F-Ptua-RNAseq-trimming-fastp-FastQC-MultiQC/*.fq.gz .

#run rnavar
salloc -A srlab -p cpu-g2-mem2x -N 1 -c 1 --mem=16GB --time=24:00:00

mamba activate nextflow

nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--skip_variantannotation \
--skip_baserecalibration true \
--outdir result

#copy data to gannet
rsync --progress --verbose --archive --exclude work/ --exclude fastqs/ --exclude preprocessing/ --exclude samtools/ --exclude .nextflow/ 20250721_rnavar shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Ptuahiniensis
```

### Peve
```
#copy data
rsync --archive --verbose --progress shellytrigg@gannet.fish.washington.edu:/volume2/web/gitrepos/urol-e5/timeseries_molecular/E-Peve/output/01.00-E-Peve-RNAseq-trimming-fastp-FastQC-MultiQC/*.fq.gz .

#make samplesheet
wget https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250619_methylseq/samplesheet.csv

sed 's/20250529_methylseq\/data\/01\.00-E-Peve-WGBS-trimming-fastp-FastQC-MultiQC/20250722_rnavar\/fastqs/g' samplesheet.csv > samplesheet2.csv

mv samplesheet2.csv samplesheet.csv

# run RNAvar
salloc -A srlab -p cpu-g2-mem2x -N 1 -c 1 --mem=16GB --time=24:00:00

mamba activate nextflow

nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Porites_evermanni_v1.fa \
--gtf /gscratch/srlab/strigg/GENOMES/Porites_evermanni_validated.gtf \
--skip_variantannotation \
--skip_baserecalibration true \
--outdir result

#copy data to gannet
rsync --progress --verbose --archive --exclude work/ --exclude fastqs/ --exclude preprocessing/ --exclude samtools/ --exclude .nextflow/ 20250722_rnavar shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Pevermanni
```

### Apul
```
mkdir /gscratch/scrubbed/strigg/analyses/20250722_rnavar_Apul/fastqs

cd /gscratch/scrubbed/strigg/analyses/20250722_rnavar_Apul/fastqs

#copy data
rsync --archive --verbose --progress shellytrigg@gannet.fish.washington.edu:/volume2/web/gitrepos/urol-e5/timeseries_molecular/D-Apul/output/01.00-D-Apul-RNAseq-trimming-fastp-FastQC-MultiQC/*.fq.gz .

#make samplesheet
sed 's/20250714_methylseq\/data\/Apul/20250722_rnavar_Apul\/fastqs/g' ../20250714_methylseq/20250714_methylseq_Apul/samplesheet.csv > samplesheet.csv

# run RNAvar
screen -S rnavar2

salloc -A srlab -p cpu-g2-mem2x -N 1 -c 1 --mem=16GB --time=24:00:00

mamba activate nextflow

nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Apulcra-genome.fa \
--gtf /gscratch/srlab/strigg/GENOMES/Apulchra-genome.gtf \
--skip_variantannotation \
--skip_baserecalibration true \
--outdir result

#copy data to gannet
rsync --progress --verbose --archive --exclude work/ --exclude fastqs/ --exclude preprocessing/ --exclude samtools/ --exclude .nextflow/ 20250722_rnavar_Apul shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5
```

## Merge and filter VCFs

- Apul: [20250728_mrgfltVCF_Apul.sh](https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250728_mrgfltVCF_Apul.sh)
- Peve: [20250728_mrgfltVCF_Peve.sh](https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250728_mrgfltVCF_Peve.sh)
- Ptua: [20250728_mrgfltVCF_Ptua.sh](https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250728_mrgfltVCF_Ptua.sh)

```
#!/bin/bash
## Job Name
#SBATCH --job-name=20250728_mrgfltVCF
## Allocation Definition
#SBATCH --account=coenv
#SBATCH --partition=cpu-g2
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=1-00:00:00
## Memory per node
#SBATCH --mem=200G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job 
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20250722_rnavar/result/variant_calling

set -ex

find . -type f -name "*.haplotypecaller.vcf.gz" | sed 's|^\./||' > vcf_list.txt

bcftools merge \
-Oz \
-o Peve.rnavar.merged.vcf.gz \
-l vcf_list.txt

bcftools filter \
-e 'QUAL < 30.0 || FMT/DP < 10 || INFO/FS > 60 || INFO/QD < 2.0|| INFO/SOR > 3.0  || FMT/DP > 150 || INFO/AF < 0.3' \
--soft-filter "FAIL" \
-Oz -o Peve.rnavar.merged-filtered.vcf.gz \
Peve.rnavar.merged.vcf.gz

bcftools view -f PASS Peve.rnavar.merged-filtered.vcf.gz -Oz -o Peve.rnavar.merged-filtered-true.vcf.gz

bcftools view -i '(38-COUNT(GT="mis"))/38>=0.8' -m2 -M2 Peve.rnavar.merged-filtered-true.vcf.gz -o Peve.rnavar.merged-filtered-true-all.vcf.gz
```

copy data to gannet

```
rsync --progress --verbose --archive variant_calling shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Ptuahiniensis/20250721_rnavar/result/

rsync --progress --verbose --archive variant_calling shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Pevermanni/20250722_rnavar/result/

rsync --progress --verbose --archive variant_calling shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/20250722_rnavar_Apul/result/



```

------------------------------------------------

https://www.youtube.com/watch?v=1Y0G2h5bQwU

filterign vcf file
variant annotations
causality











failed attempts:
```
nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--snpeff_cache /gscratch/srlab/strigg/bin/snpEff/data \
--snpeff_db pmeandrina1 \
--tools snpEff \
--skip_baserecalibration true \
--outdir results \
--annotation_cache 
```


```
nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--snpeff_genome pmeandrina1 \
--snpeff_cache /gscratch/srlab/strigg/bin/snpEff/data \
--snpeff_db pmeandrina1 \
--tools merge \
--skip_baserecalibration true \
--outdir results
WARN: The following invalid input values have been detected:

* --snpeff_genome: pmeandrina1


[-        ] NFC…REPARE_GENOME:GATK4_CREATESEQUENCEDICTIONARY -
[-        ] NFCORE_RNAVAR:PREPARE_GENOME:GTF2BED             -
[-        ] NFC…RNAVAR:PREPARE_GENOME:REMOVE_UNKNOWN_REGIONS -
[-        ] NFC…NAVAR:PREPARE_GENOME:BGZIPTABIX_KNOWN_INDELS -
[-        ] NFCORE_RNAVAR:PREPARE_GENOME:TABIX_KNOWN_INDELS  -
[-        ] NFCORE_RNAVAR:PREPARE_GENOME:SAMTOOLS_FAIDX      -
[-        ] NFCORE_RNAVAR:PREPARE_GENOME:UNTAR               -
[-        ] NFCORE_RNAVAR:PREPARE_GENOME:STAR_INDEXVERSION   -
[-        ] NFCORE_RNAVAR:PREPARE_GENOME:STAR_GENOMEGENERATE -
This path is not available within annotation-cache.
Please check https://annotation-cache.github.io/ to create a request for it.




nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--snpeff_cache /gscratch/srlab/strigg/bin/snpEff/data/pmeandrina1 \
--snpeff_db pmeandrina1 \
--tools merge \
--skip_baserecalibration true \
--outdir results

Jun-30 11:56:23.394 [main] ERROR nextflow.cli.Launcher - @unknown
nextflow.exception.WorkflowScriptErrorException: This path is not available within annotation-cache.
Please check https://annotation-cache.github.io/ to create a request for it.

```

snpeff_db: 'Oryzias_latipes_ASM223467v1'
snpeff_cache:  /data'
genome: 'Oryzias_latipes_ASM223467v1'



added these lines to snpeff.config
```
# Pocillopora meandrina (HIv1)
pmeandrina1.genome: P_meandrina
```


created a data folder (/gscratch/srlab/strigg/bin/snpEff/data)
created a pmeandrina1 folder


java -jar snpEff.jar build -gtf22 -v pmeandrina1 -noCheckCds -noCheckProtein
##this worked



-----------------



00:00:00 SnpEff version SnpEff 5.2f (build 2025-02-07 08:36), by Pablo Cingolani
00:00:00 Command: 'build'
00:00:00 Building database for 'pmeandrina1'
00:00:00 Reading configuration file 'snpEff.config'. Genome: 'pmeandrina1'
00:00:00 Looking for config file: '/mmfs1/gscratch/srlab/strigg/bin/snpEff/snpEff.config'
00:00:00 Reading config file: /mmfs1/gscratch/srlab/strigg/bin/snpEff/snpEff.config
00:00:01 done
00:00:01 Reading GTF22 data file  : '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/genes.gtf'
00:00:01 Reading file '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/genes.gtf'
java.lang.RuntimeException: File not found '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/genes.gtf'
        at org.snpeff.util.Gpr.reader(Gpr.java:513)
        at org.snpeff.util.Gpr.reader(Gpr.java:484)
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactoryGff.readGff(SnpEffPredictorFactoryGff.java:538)
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactoryGff.create(SnpEffPredictorFactoryGff.java:356)
        at org.snpeff.snpEffect.commandLine.SnpEffCmdBuild.run(SnpEffCmdBuild.java:414)
        at org.snpeff.SnpEff.run(SnpEff.java:1175)
        at org.snpeff.SnpEff.main(SnpEff.java:164)
java.lang.RuntimeException: Error reading file '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/genes.gtf'
java.lang.RuntimeException: File not found '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/genes.gtf'
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactoryGff.create(SnpEffPredictorFactoryGff.java:373)
        at org.snpeff.snpEffect.commandLine.SnpEffCmdBuild.run(SnpEffCmdBuild.java:414)
        at org.snpeff.SnpEff.run(SnpEff.java:1175)
        at org.snpeff.SnpEff.main(SnpEff.java:164)
00:00:01 Logging
00:00:02 Checking for updates...
00:00:03 Done.



mv Pocillopora_meandrina_HIv1.genes-validated.gtf genes.gtf

Too many 'WARNING_GENE_NOT_FOUND' warnings, no further warnings will be shown.


00:01:13 Create exons from CDS (if needed): 
00:01:13 Exons created for 0 transcripts.
00:01:13 Deleting redundant exons (if needed): 
00:01:13        Total transcripts with deleted exons: 0
00:01:13 Collapsing zero length introns (if needed): 
00:01:14        Total collapsed transcripts: 0
00:01:14        Reading sequences   :
00:01:14        FASTA file: '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/genomes/pmeandrina1.fa' not found.
00:01:14        FASTA file: '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/sequences.fa' not found.
java.lang.RuntimeException: Cannot find reference sequence.
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactory.readExonSequences(SnpEffPredictorFactory.java:702)
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactoryGff.readExonSequences(SnpEffPredictorFactoryGff.java:478)
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactoryGff.create(SnpEffPredictorFactoryGff.java:361)
        at org.snpeff.snpEffect.commandLine.SnpEffCmdBuild.run(SnpEffCmdBuild.java:414)
        at org.snpeff.SnpEff.run(SnpEff.java:1175)
        at org.snpeff.SnpEff.main(SnpEff.java:164)
java.lang.RuntimeException: Error reading file '/mmfs1/gscratch/srlab/strigg/bin/snpEff/./data/pmeandrina1/genes.gtf'
java.lang.RuntimeException: Cannot find reference sequence.
        at org.snpeff.snpEffect.factory.SnpEffPredictorFactoryGff.create(SnpEffPredictorFactoryGff.java:373)
        at org.snpeff.snpEffect.commandLine.SnpEffCmdBuild.run(SnpEffCmdBuild.java:414)
        at org.snpeff.SnpEff.run(SnpEff.java:1175)
        at org.snpeff.SnpEff.main(SnpEff.java:164)
00:01:14 Logging
00:01:15 Checking for updates...
00:01:16 Done.



#test if snpEff works with custom db
#I'm excluding VEP for now
salloc -A srlab -p cpu-g2-mem2x -N 1 -c 1 --mem=16GB --time=12:00:00

mamba activate nextflow

nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--snpeff_cache /gscratch/srlab/strigg/bin/snpEff/data \
--snpeff_db pmeandrina1 \
--tools snpeff \
--skip_baserecalibration true \
--outdir result

pmeandrina1.genome
 00:00:00 Reading configuration file 'snpEff.config'. Genome: 'pmeandrina1'
  00:00:00 Reading config file: /gscratch/scrubbed/srlab/nxf.F0LtIcqUKo/snpEff.config
SNPEFF_SNPEFF

nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--genome null \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--snpeff_cache /gscratch/srlab/strigg/bin/snpEff/data \
--snpeff_db pmeandrina1 \
--tools merge \
--skip_baserecalibration true \
--outdir result


--skip_variantfiltration
--skip_variantannotation






------------------------------------------

Notes from chat with Laura

## VCFtools to filter for coverage across samples and 15-20 min reads/sample

**merging methylation and RNAseq data

**filter for high depth because of paralogs

## Use SNPRelate to filter vcf files. Remove: 
- Select biallelic loci only 
- Loci with minor allele frequency < 5%
- Select loci that are present across all samples (missing.rate=0)


## Prune/Clean SNPs  (to have the signal not diluted by these)
- Remove those in linkage-disequilibrium
- Remove those with Minor Allele Frequency <5%
- Remove those that are missing from 20% or more of samples

remove sites that are missing across too many indivuals


- PCA by chromosome or first # of axis
- variance partitioning: 

PC score from genetic ~ 

expression ~ 

matrix of expression, matrix of snps



- Calculate mean FST for expressed sites. CHeck for signle sites that have high FST. Remove zero or neg and then see what average is. > 0.5 = different. Check what this is in coral world

-relatedness: sibs etc.

- QTL analysis:

expression derived snps: more likely cis
meth derived snps: might be more likely trans

combine or separate VCF analysis?




** Katherine and Laura's Oly paper 




___________________________________________
Errors:


Script_557ceb36a1289815: /mmfs1/home/strigg/.nextflow/assets/nf-core/rnavar/./workflows/rnavar.nf
Script_2ebe1d1a775a7432: /mmfs1/home/strigg/.nextflow/assets/nf-core/rnavar/./workflows/../subworkflows/nf-core/fastq_align_star/../bam_sort_stats_samtools/main.nf
Jun-30 11:56:23.235 [main] DEBUG nextflow.Session - Session aborted -- Cause: This path is not available within annotation-cache.
Please check https://annotation-cache.github.io/ to create a request for it.







pwd
/gscratch/scrubbed/strigg/analyses/20250620_rnavar


nextflow run nf-core/rnavar \
-c /gscratch/srlab/strigg/bin/uw_hyak_srlab.config \
-resume \
--input samplesheet.csv \
--igenomes_ignore \
--fasta /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.assembly.fasta \
--gtf /gscratch/srlab/strigg/GENOMES/Pocillopora_meandrina_HIv1.genes-validated.gtf \
--tools merge \
--skip_baserecalibration true \
--outdir results

