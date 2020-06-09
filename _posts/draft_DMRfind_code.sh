#!/bin/bash
## Job Name
#SBATCH --job-name=DMRfindAllEPItotCounts
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=2-23:30:00
## Memory per node
#SBATCH --mem=500G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20191108/tot_counts_as_mC_counts

#replace mC column of allc file with total counts column
FILES=/gscratch/scrubbed/strigg/analyses/20190925/allc_*
for f in $FILES
do
zcat < ${f} | \
cut -f 1-4,6,7 | \
awk -F "\t" '{print $1FS$2FS$3FS$4FS$5FS$5FS$6}' | \
gzip > $(basename ${f})

#run DMR find requiring 3 groups/treatment have coverage and DMS = 30bp

# For table S1, compare day 0, day 10, day 135, and day 145

%%bash

methylpy DMRfind \
--allc-files allc_EPI-41_S38.tsv.gz \
allc_EPI-42_S39.tsv.gz \
allc_EPI-43_S40.tsv.gz \
allc_EPI-44_S41.tsv.gz \
allc_EPI-119_S31.tsv.gz \
allc_EPI-120_S32.tsv.gz \
allc_EPI-135_S35.tsv.gz \
allc_EPI-136_S36.tsv.gz \
allc_EPI-151_S2.tsv.gz \
allc_EPI-152_S3.tsv.gz \
allc_EPI-153_S4.tsv.gz \
allc_EPI-154_S5.tsv.gz \
allc_EPI-181_S16.tsv.gz \
allc_EPI-182_S17.tsv.gz \
allc_EPI-184_S18.tsv.gz \
allc_EPI-185_S19.tsv.gz \
--samples EPI-41 EPI-42 EPI-43 EPI-44 EPI-119 EPI-120 EPI-135 EPI-136 EPI-151 EPI-152 EPI-153 EPI-154 EPI-181 EPI-182 EPI-184 EPI-185 \
--mc-type "CGN" \
--num-procs 8 \
--min-cov 5 \
--output-prefix amb_AllTimes_DMR250bp_MCmax30_cov5x \
--mc-max-dist 30 \
--dmr-max-dist 250 \
--min-num-dms 3 \
--sig-cutoff 1 \
--sample-category 0 0 0 0 1 1 1 1 2 2 2 2 3 3 3 3 



# For table S2, compare pH treatments at Day 10
methylpy DMRfind \
--allc-files allc_EPI-103_S27.tsv.gz \
allc_EPI-104_S28.tsv.gz \
allc_EPI-111_S29.tsv.gz \
allc_EPI-113_S30.tsv.gz \
allc_EPI-119_S31.tsv.gz \
allc_EPI-120_S32.tsv.gz \
allc_EPI-135_S35.tsv.gz \
allc_EPI-136_S36.tsv.gz \
allc_EPI-127_S33.tsv.gz \
allc_EPI-128_S34.tsv.gz \
allc_EPI-143_S37.tsv.gz \
allc_EPI-145_S38.tsv.gz \
--samples EPI-103 EPI-104 EPI-111 EPI-113 EPI-119 EPI-120 EPI-135 EPI-136 EPI-127 EPI-128 EPI-143 EPI-145 \
--mc-type "CGN" \
--num-procs 8 \
--min-cov 5 \
--output-prefix day10_AllpH_DMR250bp_MCmax30_cov5x \
--mc-max-dist 30 \
--dmr-max-dist 250 \
--min-num-dms 3 \
--sig-cutoff 1 \
--sample-category 0 0 1 1 2 2 2 2 0 0 1 1 



# For table S3, compare pH treatments at Day 135
%%bash

methylpy DMRfind \
--allc-files allc_EPI-151_S2.tsv.gz \
allc_EPI-152_S3.tsv.gz \
allc_EPI-153_S4.tsv.gz \
allc_EPI-154_S5.tsv.gz \
allc_EPI-159_S6.tsv.gz \
allc_EPI-160_S7.tsv.gz \
allc_EPI-161_S8.tsv.gz \
allc_EPI-162_S9.tsv.gz \
allc_EPI-167_S10.tsv.gz \
allc_EPI-168_S11.tsv.gz \
allc_EPI-169_S12.tsv.gz \
allc_EPI-170_S13.tsv.gz \
--samples EPI-151 EPI-152 EPI-153 EPI-154 EPI-159 EPI-160 EPI-161 EPI-162 EPI-167 EPI-168 EPI-169 EPI-170 \
--mc-type "CGN" \
--num-procs 8 \
--min-cov 5 \
--output-prefix day135_AllpH_DMR250bp_MCmax30_cov5x \
--mc-max-dist 30 \
--dmr-max-dist 250 \
--min-num-dms 3 \
--sig-cutoff 1 \
--sample-category 0 0 0 0 1 1 1 1 2 2 2 2 

# For table S4, compare pH treatments at Day 145
%%bash

methylpy DMRfind \
--allc-files allc_EPI-175_S14.tsv.gz \
allc_EPI-176_S15.tsv.gz \
allc_EPI-181_S16.tsv.gz \
allc_EPI-182_S17.tsv.gz \
allc_EPI-184_S18.tsv.gz \
allc_EPI-185_S19.tsv.gz \
allc_EPI-187_S20.tsv.gz \
allc_EPI-188_S21.tsv.gz \
allc_EPI-193_S22.tsv.gz \
allc_EPI-194_S23.tsv.gz \
allc_EPI-199_S24.tsv.gz \
allc_EPI-200_S25.tsv.gz \
allc_EPI-205_S26.tsv.gz \
allc_EPI-206_S27.tsv.gz \
allc_EPI-208_S28.tsv.gz \
allc_EPI-209_S29.tsv.gz \
allc_EPI-214_S30.tsv.gz \
allc_EPI-215_S31.tsv.gz \
allc_EPI-220_S32.tsv.gz \
allc_EPI-221_S33.tsv.gz \
allc_EPI-226_S34.tsv.gz \
allc_EPI-227_S35.tsv.gz \
allc_EPI-229_S36.tsv.gz \
allc_EPI-230_S37.tsv.gz \
--samples EPI-175 EPI-176 EPI-181 EPI-182 EPI-184 EPI-185 EPI-187 EPI-188 EPI-193 EPI-194 EPI-199 EPI-200 EPI-205 EPI-206 EPI-208 EPI-209 EPI-214 EPI-215 EPI-220 EPI-221 EPI-226 EPI-227 EPI-229 EPI-230 \
--mc-type "CGN" \
--num-procs 8 \
--min-cov 5 \
--output-prefix day145_AllpH_DMR250bp_MCmax30_cov5x \
--mc-max-dist 30 \
--dmr-max-dist 250 \
--min-num-dms 3 \
--sig-cutoff 1 \
--sample-category 0 0 1 1 1 1 2 2 0 0 2 2 3 3 4 4 5 5 5 5 3 3 4 4






#replace mC column of allc file with total counts column
FILES=/gscratch/scrubbed/strigg/analyses/20190925/allc_*
for f in $FILES
do
zcat < ${f} | \
awk -F "\t" '{if((substr($4,1,2)=="CG" && $6>=5))print $1FS$2FS$2FS$4FS$5FS$5FS$6}' | \
gzip > $(basename ${f})


--resid-cutoff 1
--min-tests 1
--num-sims 1
--sig-cutoff 1





#!/bin/bash
## Job Name
#SBATCH --job-name=EPIbkgdFeatures
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=2-23:30:00
## Memory per node
#SBATCH --mem=500G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20191109

FILES=/gscratch/scrubbed/strigg/analyses/20191108/combine_filt_allc/*bkgd.bed
for f in $FILES
do
/gscratch/srlab/programs/bedtools-2.27.1/bin/intersectBed \
-a ${f} \
-b /gscratch/srlab/strigg/data/Pgenr/Panopea-generosa-vv0.74.a4-merged-2019-10-07-4-46-46.gff3 \
-wb \
> $(basename ${f%.bed})_0928GFF3.txt
done


awk '{a[$1,$2]+=$3; b[$1,$2]+=$4}END{for(i in a)print i,a[i],b[i]}' | \



%%bash
for f in allc_*.tsv.gz
do
zcat < ${f} | \
awk -F"\t" '{if(($1==chr && $2==p && $4!=c))print chr"\t"p"\t"$3"\t"c"\t"$5"\t"$6"\t"$7;else print $0}{chr=$1;p=$2; c=$4}'| \
awk -F"\t" '{a[$1"\t"$2"\t"$3"\t"$4]+=$5; b[$1"\t"$2"\t"$3"\t"$4]+=$6}END{for(i in a)print i"\t"a[i]"\t"b[i]"\t"1}' | \
sort -k1.13,1.14n -k2,2n |\
gzip > $(basename ${f} .tsv.gz).destrand.tsv.gz
done


cat 5x_allc/*.5x.5x.0.75grp.bed | /gscratch/srlab/programs/bedtools-2.27.1/bin/intersectBed -a - -b DMR250bp_MAPQ20_MCmax25_cov5x_rms_results_collapsed.tsv.DMR.bed -wb | awk -F"\t" '{print $7FS$8FS$9FS$10FS$6FS$4FS$5}' |\
awk -F"\t" '{a[$1"\t"$2"\t"$3"\t"$4"\t"$5]+=$6; b[$1"\t"$2"\t"$3"\t"$4"\t"$5]+=$7}END{for(i in a)print i"\t"a[i]"\t"b[i]}' > DMR_mc_c_counts.tsv
> 

|tr '\t' ' ' | \
awk 'NR==FNR{a[$1,$2]=$1" "$2;next}(($1,$2)in a){print a[$1,$2],$5,$6}' amb_d0.3grps.bed - | \
awk '{a[$1" "$2]+=$3; b[$1" "$2]+=$4}END{for(i in a)print i" "a[i]" "b[i]}'



cat *.5x.5x.0.75grp.feat.bed | awk '{print $7,$10,$11,$9,$4,$5}' | tr ' ' '\t' |awk '{a[$1"\t"$2"\t"$3"\t"$4]+=$5; b[$1"\t"$2"\t"$3"\t"$4]+=$6}END{for(i in a)print i"\t"a[i]"\t"b[i]}' > all_unique_feature_sums.txt



while IFS= read -r file; do
	du -ch $file | tail -1 | cut -f 1
done < "~/Desktop/filenames.txt"
file_list=$(cat ~/Desktop/filenames.txt)
du -ch $file_list | tail -1 | cut -f 1


#code below reproduces ~/Documents/GitHub/Salmon-sealice/data/allc_5x_0.75Xgrp_CpG.txt
cat *5x.5x.0.75grp.bed | awk -F"\t" '{a[$6]+=$4; b[$6]+=$5}END{for(i in a)print i"\t"a[i]"\t"b[i]}' | sort






#!/bin/bash
## Job Name
#SBATCH --job-name=DMRfindAmb_test
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=4-23:30:00
## Memory per node
#SBATCH --mem=100G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20191031

%%bash

#concatenate all .tsv files from the same sample
ls ../20190925/ | cut -d'_' -f 2 > samplelist.txt

#loop through all samples and concatenate intermediate files if they are from the same sample; this will not find files for samples that aren't ambient since this is an ambient comparison
for f in `cat samplelist.txt
do
cat amb_AllTimes_DMR250bp_MCmax30_cov5x_filtered_allc_${f}*.tsv > amb_AllTimes_DMR250bp_MCmax30_cov5x_filtered_allc_${f}_filtered_allc.tsv
done





#!/bin/bash
## Job Name
#SBATCH --job-name=DMRfindAmb_test
## Allocation Definition 
#SBATCH --account=srlab
#SBATCH --partition=srlab
## Resources
## Nodes 
#SBATCH --nodes=1
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=4-23:30:00
## Memory per node
#SBATCH --mem=100G
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=strigg@uw.edu
## Specify the working directory for this job
#SBATCH --chdir=/gscratch/scrubbed/strigg/analyses/20191031

#prepare allc files
#need to make allc files like bed files so need to add end position, remove strand, context info, and stat info
##open filtered_allc file
####cat < ${f}
##print chrom, start, end (start since it's a site), #methylated Cs, # unmethylated Cs
####awk -F"\t" '{print $1"\t"$2"\t"$2"\t"$5"\t"$6}'
##find all sites that are within DMRs with bedtools intersect, wb option prints overlapping lines from both files
####/gscratch/srlab/programs/bedtools-2.27.1/bin/intersectBed -a - \
####-b amb_AllTimes_DMR250bp_MCmax30_cov5x.filtered.bed \
####-wb | \
##print only the DMR chromosome, DMR start, DMR end, methylated Cs, and unmethylated Cs
####awk -F"\t" '{print $6"\t"$7"\t"$8"\t"$4"\t"$5}'
##remove lines where reads have already been summed;
##This is due to the MCmaxdistance setting in DMRfind
##Which combined reads for sites within a 30bp window
####sort | uniq
##For each unique DMR chromosome, DMR start, DMR end, sum all methylated Cs and sum all unmethylated Cs
####awk -F"\t" '{a[$1"\t"$2"\t"$3]+=$4; b[$1"\t"$2"\t"$3]+=$5}END{for(i in a)print i"\t"a[i]"\t"b[i]}' | \
##sort the final output
####sort
##save out put as sample name + .mCsum.DMR.tsv
####$(basename ${f} _filtered_allc.tsv).mCsum.DMR.tsv


%%bash
for f in *_filtered_allc.tsv
do
cat < ${f} | \
awk -F"\t" '{print $1"\t"$2"\t"$2"\t"$5"\t"$6}' | \
/gscratch/srlab/programs/bedtools-2.27.1/bin/intersectBed -a - \
-b amb_AllTimes_DMR250bp_MCmax30_cov5x.filtered.bed \
-wb | \
awk -F"\t" '{print $6"\t"$7"\t"$8"\t"$4"\t"$5}' |\
sort | uniq | \
awk -F"\t" '{a[$1"\t"$2"\t"$3]+=$4; b[$1"\t"$2"\t"$3]+=$5}END{for(i in a)print i"\t"a[i]"\t"b[i]}' | \
sort \
> $(basename ${f} _filtered_allc.tsv).mCsum.DMR.tsv
done



cat amb_AllTimes_DMR250bp_MCmax30_cov5x_filtered_allc_EPI-41_filtered_allc.tsv | awk '{if(($1 == "PGA_scaffold10__49_contigs__length_53961475")&&($2>=11112810)&&($3<=11112940))print $0}'
