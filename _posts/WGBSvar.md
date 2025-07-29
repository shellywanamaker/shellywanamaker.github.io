---
layout: post
title: Call variants from Apul and Peve WGBS data
author: Shelly Wanamaker
tags: methylseq nf-core EMseq coral E5
---

## Purpose

## Results

**Apul**

- matrix further filtered for coverage in 80% of samples and for biallelic variants only: [https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/merged-filtered-true-all.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/merged-filtered-true-all.vcf.gz)
- matrix filtered for quality, depth, allele freq, etc: [https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/merged-filtered-true.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/merged-filtered-true.vcf.gz)
- matrix from merging vcfs: [https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/merged.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/merged.vcf.gz)
- individual vcfs: [https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/](https://gannet.fish.washington.edu/metacarcinus/E5/20250717_biscuit_Apul/) 

**Peve**

- matrix further filtered for coverage in 80% of samples and for biallelic variants only: [Peve.biscuit.merged-filtered-true-all.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250717_biscuit_Peve/Peve.biscuit.merged-filtered-true-all.vcf.gz)
- matrix filtered for quality, depth, allele freq, etc: [Peve.biscuit.merged-filtered-true.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250717_biscuit_Peve/Peve.biscuit.merged-filtered-true.vcf.gz)
- matrix from merging vcfs: [Peve.biscuit.merged.vcf.gz](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250717_biscuit_Peve/Peve.biscuit.merged.vcf.gz)
- individual vcfs: [https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250717_biscuit_Peve/](https://gannet.fish.washington.edu/metacarcinus/E5/Pevermanni/20250717_biscuit_Peve/) 

## Methods


copy Peve dedup bam files to klone (these were from -0.8 AS analysis)

```
rsync --progress --verbose --archive shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Pevermanni/20250619_methylseq/bismark/deduplicated .
```

Apul dedup bam files were already on klone

```
/gscratch/scrubbed/strigg/analyses/20250714_methylseq/20250714_methylseq_Apul/bismark/deduplicated/
```

Run biscuit to call variants

- Peve script: [https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250717_bisc_pev.sh](https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250717_bisc_pev.sh)
- Apul script: [20250717_biscuit.sh](https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250717_biscuit.sh)

```
#!/bin/bash
## Job Name
#SBATCH --job-name=20250717_biscuit
## Allocation Definition
#SBATCH --account=srlab
#SBATCH --partition=cpu-g2-mem2x
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=1-00:00:00
## Memory per node
#SBATCH --mem=250G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job 
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20250717_biscuit_Apul

set -ex

#activate conda env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mmfs1/gscratch/srlab/nextflow/bin/miniforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mmfs1/gscratch/srlab/nextflow/bin/miniforge/etc/profile.d/conda.sh" ]; then
        . "/mmfs1/gscratch/srlab/nextflow/bin/miniforge/etc/profile.d/conda.sh"
    else
        export PATH="/mmfs1/gscratch/srlab/nextflow/bin/miniforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/mmfs1/gscratch/srlab/nextflow/bin/miniforge/etc/profile.d/mamba.sh" ]; then
    . "/mmfs1/gscratch/srlab/nextflow/bin/miniforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

#define directory 

bismark_dir="/gscratch/scrubbed/strigg/analyses/20250714_methylseq/20250714_methylseq_Apul/bismark/deduplicated/"

biscuit_dir="/mmfs1/gscratch/srlab/nextflow/bin/miniforge/bin/"

# Create a pileup VCF of genetic information for each sample

find ${bismark_dir}*.deduplicated.sorted.bam| \
xargs basename -s .deduplicated.sorted.bam |\
xargs -I{} ${biscuit_dir}biscuit pileup -@ 24 -o {}_pileup.vcf \
/gscratch/srlab/strigg/GENOMES/Apulcra-genome.fa \
${bismark_dir}{}.deduplicated.sorted.bam

# Also compresses and indexes the VCF
bgzip -@ 24 *.vcf


# Extract DNA methylation into BED format

for fq in *.vcf.gz 
do
  # Set filename
  file_name=$(echo "${fq}" | awk -F"_" '{print $1"_mutation_data.bed"}')
  
  # Run vcf2bed
  biscuit vcf2bed \
  -t snp \
  ${fq} \
  > ${file_name}
done


# Also compresses and indexes the BED
bgzip *_mutation_data.bed


```



copy variant data to gannet
```
rsync --archive --verbose --progress 20250717_biscuit_Peve shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Pevermanni

rsync --archive --verbose --progress --exclude deduplicated/ --exclude GenomicsDB/ 20250717_biscuit_Apul shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5
```

merge Apul VCFs

```
for file in *_pileup.vcf.gz 
do
	sample="$(basename -a $file | cut -d "_" -f 1)"
	index="$(basename -a $file | cut -d "_" -f 1).tbi"
	echo -e "$sample\t$file\t$index" >> sample_map.txt
done

#create list of vcf files
awk '{print $2}' sample_map.txt > vcf_list.txt

#rename indexes so bcftools can find them
for filename in *.tbi
do 
    mv $filename "$(basename -a $filename | cut -d "." -f 1)_pileup.vcf.gz.tbi"
done

#run merge
bcftools merge \
-Oz \
-o merged.vcf.gz \
-l vcf_list.txt


```

merge Peve VCFs

```
#!/bin/bash
## Job Name
#SBATCH --job-name=20250724_mergeVCF
## Allocation Definition
#SBATCH --account=coenv
#SBATCH --partition=cpu-g2
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=1-00:00:00
## Memory per node
#SBATCH --mem=300G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job 
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20250717_biscuit_Peve

set -ex

bcftools merge \
-Oz \
-o Peve.biscuit.merged.vcf.gz \
-l vcf_list.txt

```



#### Filter merged file
Filtering was done based on Laura's parameters here: [04_Genetic-Structure-Analysis.Rmd](https://github.com/laurahspencer/red-king_RNASeq-2022/blob/main/notebooks/04_Genetic-Structure-Analysis.Rmd) and [20220627_genotype-RNASeq_concat-genome.sh](20220627_genotype-RNASeq_concat-genome.sh). I believe these are from [GATK recommendations](https://gatk.broadinstitute.org/hc/en-us/articles/360035890471-Hard-filtering-germline-short-variants). Because these files don't have all the same criteria Laura used in filtering, I filtered by:

- depth (keeping variants with >=10 and  =<150 reads)
- quality (keeping variants >=30.0)
- genotype quality (GQ; keeping variants >=20)
- allele frequency (keeping variants >=0.3) 

These are some fields in the VCF that can be used for filtering:

| Field | Meaning                                          |
| ----- | ------------------------------------------------ |
| `GT`  | Genotype (standard VCF format)                   |
| `GL1` | Genotype likelihoods                             |
| `GQ`  | Genotype quality                                 |
| `DP`  | Read depth                                       |
| `SP`  | shows allelic support for SNPs                   |
| `CV`  | Conversion status (e.g. methylation context)     |
| `BT`  | Bisulfite type (methylated/unmethylated support) |
| `AF`  | Allele frequency |


- [20250728_filtVCF.sh](https://gannet.fish.washington.edu/metacarcinus/mox_jobs/20250728_filtVCF.sh)

```
#!/bin/bash
## Job Name
#SBATCH --job-name=20250728_filtVCF
## Allocation Definition
#SBATCH --account=coenv
#SBATCH --partition=cpu-g2
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=1-00:00:00
## Memory per node
#SBATCH --mem=300G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job 
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20250717_biscuit_Apul

set -ex

bcftools --version

# Hard filter variants
echo "Hard filtering variants"

bcftools filter \
-e 'QUAL < 30.0 || FMT/DP < 10 || FMT/GQ < 20 || FMT/DP > 150 || FMT/AF1 < 0.3' \
--soft-filter "FAIL" \
-Oz -o merged-filtered.vcf.gz \
merged.vcf.gz

#create index 
bcftools index merged-filtered.vcf.gz


# Select only SNPs that pass filtering
echo "Selecting SNPs that pass fitering"

bcftools view -f PASS merged-filtered.vcf.gz -Oz -o merged-filtered-true.vcf.gz

```

filter for coverage in 80% of samples and for biallelic variants

```
bcftools view -i '(40-COUNT(GT="mis"))/40>=0.8' -m2 -M2 merged-filtered-true.vcf.gz -o merged-filtered-true-all.vcf.gz 
```

for Peve
```
bcftools view -i '(38-COUNT(GT="mis"))/38>=0.8' -m2 -M2 merged-filtered-true.vcf.gz -o merged-filtered-true-all.vcf.gz 
```

copy data

```
rsync --progress --verbose --archive 20250717_biscuit_Peve/ shellytrigg@gannet.fish.washington.edu:/volume2/web/metacarcinus/E5/Pevermanni/20250717_biscuit_Peve
```




**Failed attempts**


Attempts using GATK which ultimately didn't work because the VCFs were generated by biscuit and are not g.vcf files. That is why I switched to bcftools per ChatGPT recommendation.

- [0250721_mergeVCF]()

```

#!/bin/bash
## Job Name
#SBATCH --job-name=20250721_mergeVCF
## Allocation Definition
#SBATCH --account=srlab
#SBATCH --partition=cpu-g2-mem2x
## Resources
## Nodes
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=1-00:00:00
## Memory per node
#SBATCH --mem=350G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job 
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20250717_biscuit_Apul

set -ex

#define variables

gatk_dir="/mmfs1/gscratch/srlab/nextflow/bin/miniforge/envs/gatk4/bin/"

genome="/gscratch/srlab/strigg/GENOMES/Apulcra-genome.fa"


# create interval list (just a list of all contigs in genome)
# This will be used in HaplotypeCaller and GenomicsDBImport to increase speed
# Note: the intervals file requires a specific name - e.g. for .bed format, it MUST be "intervals.bed"
echo "Creating intervals list"

awk 'BEGIN {FS="\t"}; {print $1 FS "0" FS $2}' ${genome}.fai > intervals.bed

# create sample map of all gvcfs
echo "Creating sample map of all gvcfs"

for file in *_pileup.vcf.gz 
do
	sample="$(basename -a $file | cut -d "_" -f 1)"
	index="$(basename -a $file | cut -d "_" -f 1).tbi"
	echo -e "$sample\t$file\t$index" >> sample_map.txt
done

#make a list of read indexes
echo "Creating list of indexes"

for file in *.tbi 
do
	echo -e "$file" >> read_indexes.txt
done


# create index files for each vcf
#for file in *_pileup.vcf.gz
#do
# ${gatk_dir}gatk IndexFeatureFile \
#     -I $(basename -a $file)
# done


# Aggregate single-sample GVCFs into GenomicsDB
# Note: the intervals file requires a specific name - e.g. for .bed format, it MUST be "intervals.bed"
echo "Aggregating single-sample GVCFs into GenomicsDB"
${gatk_dir}gatk GenomicsDBImport \
--java-options '-Xmx400g' \
--genomicsdb-workspace-path GenomicsDB/ \
-L intervals.bed \
--sample-name-map sample_map.txt \
--read-index read_indexes.txt \
--reader-threads 20 >> "07-GenomicsDBImport_stout.txt" 2>&1

echo "Joint genotyping"
${gatk_dir}gatk GenotypeGVCFs \
--java-options '-Xmx350g' \
-R ${genome} \
-V gendb://GenomicsDB \
-O Apul_rnaseq_genotypes.vcf.gz \
>> "08-GenotypeGVCFs_stout.txt" 2>&1

# Hard filter variants
echo "Hard filtering variants"
${gatk_dir}gatk VariantFiltration \
-R ${genome} \
-V Apul_rnaseq_genotypes.vcf.gz \
-O Apul_rnaseq_genotypes-filtered.vcf.gz \
--filter-name "FS" \
--filter "FS > 60.0" \
--filter-name "QD" \
--filter "QD < 2.0" \
--filter-name "QUAL30" \
--filter "QUAL < 30.0" \
--filter-name "SOR3" \
--filter "SOR > 3.0" \
--filter-name "DP15" \
--filter "DP < 15" \
--filter-name "DP150" \
--filter "DP > 150" \
--filter-name "AF30" \
--filter "AF < 0.30" >> "09-Filter-variants_stout.txt" 2>&1

# Select only SNPs that pass filtering
echo "Selecting SNPs that pass fitering"
${gatk_dir}gatk SelectVariants \
-R ${genome} \
-V Apul_rnaseq_genotypes-filtered.vcf.gz \
--exclude-filtered TRUE \
--select-type-to-include SNP \
-O Apul_rnaseq_genotypes-filtered-true.vcf.gz \
 >> "10-SelectVariants_stout.txt" 2>&1

```

test DB to make sure gatk can access it
```
/mmfs1/gscratch/srlab/nextflow/bin/miniforge/envs/gatk4/bin/gatk SelectVariants \
-R /gscratch/srlab/strigg/GENOMES/Apulcra-genome.fa \
-V gendb://GenomicsDB \
-L ntLink_4 \
-O output.chr20.vcf
```
this works


```
screen -S mergeVCF

salloc -A srlab -p cpu-g2-mem2x -N 1 -c 1 --mem=300GB --time=12:00:00

echo "Joint genotyping"
/mmfs1/gscratch/srlab/nextflow/bin/miniforge/envs/gatk4/bin/gatk GenotypeGVCFs \
-R /gscratch/srlab/strigg/GENOMES/Apulcra-genome.fa \
-V gendb://GenomicsDB \
-O Apul_rnaseq_genotypes.vcf.gz \
>> "08-GenotypeGVCFs_stout.txt" 2>&1
```

I stopped this and tried this instead:
```
/mmfs1/gscratch/srlab/nextflow/bin/miniforge/envs/gatk4/bin/gatk GenotypeGVCFs \
--java-options '-Xmx350g' \
-R /gscratch/srlab/strigg/GENOMES/Apulcra-genome.fa \
-V gendb://GenomicsDB \
-L intervals.bed \
-O Apul_rnaseq_genotypes.vcf.gz \
>> "08-GenotypeGVCFs_stout.txt" 2>&1
```

*** this isn't working because my input is VCF not g.VCF. so I need to use a different tool. I installed bcftools and will try that. 


didn't do this

```
#copy fq to klone to re-do methylseq with -0.6 AS 
rsync --archive --verbose --progress --include='*/' --include='*.fq.gz' --exclude='*' shellytrigg@gannet.fish.washington.edu:/volume2/web/gitrepos/urol-e5/timeseries_molecular/E-Peve/output/01.00-E-Peve-WGBS-trimming-fastp-FastQC-MultiQC .
```

if I have data for genome variants, genome methylations, lncRNA expression, and miRNA expression, how can I determine which features and/or aspects of features (proximity to genes, within gene bodies, within repeat elements, etc) have the greatest effect on gene expression?