---
layout: post
title: My First Post
---

This is my **first** lab notebook post using GitHub's markdown.

### My goals today are to:  
1. Get my first lab notebook post out  
2. Start on my [first task](https://github.com/RobertsLab/resources/issues/379#event-1850948742) to familiarize with the lab's general DNA methylation analysis pipeline for PE bisulfide sequencing data  
3. Try to find a monitor and keyboard from the surplus room in SAFS  

 
This is an example of how to include images in posts and of how much I love shellfish
![an image alt text]({{ site.baseurl }}/images/shelly_muk_crabs.jpg "an image title")

Let's see how this goes!


### End-of-day Update:  
1. Post worked!
2. Progress on first task:  
   - Got server credentials and was able to mount servers to access data  
   - Set up jupyter notebook.  Found [this tutorial](https://www.youtube.com/watch?v=HW29067qVWk) helpful. Still need to work on how to sync with GitHub so large data files and analyses can be saved on the server. 
   - Was able to download Bismark and get it to run locally on a subset of the data (10K reads). See details below. I did not do further analysis because I wanted to get the jupyter notebook fully set up and run the analysis on the server before getting too deep.
   -will continue to work on jupyter notebook setup and analysis tomorrow
3. Went down to SAFS to ask Laurie about the surplus room, but she was in a meeting. Will try tomorrow 



####################RUNNING BISMARK LOCALLY#####################################
##needed to install bowtie2 locally
conda install -c bioconda bowtie2
##needed to install samtools locally
conda install -c bioconda samtools
##install bismark
 conda install -c bioconda bismark 
 ##download genome locally
 curl http://owl.fish.washington.edu/halfshell/genomic-databank/Cvirginica_v300.fa > Cvirginica_v300.fa

##bismark genome preparation
bismark_genome_preparation --path_to_bowtie /Users/Shelly/anaconda3/bin/ --verbose /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300
###output from command => see below

#running bismark
bismark -u 10000 --non_directional --score_min L,0,-0.6 --genome /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/ -1 /Volumes/web/seashell/bu-serine-wd/18-04-07/*R1.fastq.gz -2 /Volumes/web/seashell/bu-serine-wd/18-04-07/*R2.fastq.gz

###############output from bismark alignment#######################
# Path to Bowtie 2 specified as: bowtie2
# Bowtie seems to be working fine (tested command 'bowtie2 --version' [2.3.4])
# Output format is BAM (default)
# Alignments will be written out in BAM format. Samtools found here: '/Users/Shelly/anaconda3/bin/samtools'
# Reference genome folder provided is /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/	(absolute path is '/Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/)'
# FastQ format assumed (by default)
# Processing sequences up to read no. 10000 from the input file

# Input files to be analysed (in current folder '/Users/Shelly/Desktop/personal/Career/StevenRobetsLab/data_analysis/Cvirg_Apr2018/Bismark_attempt1'):
# /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R1.fastq.gz
# /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R2.fastq.gz
# Library is assumed to be strand-specific (directional), alignments to strands complementary to the original top or bottom strands will be ignored (i.e. not performed!)
# Setting parallelization to single-threaded (default)

# Current working directory is: /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/data_analysis/Cvirg_Apr2018/Bismark_attempt1

# Now reading in and storing sequence information of the genome specified in: /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/

# chr NC_035780.1 (65668440 bp)
# chr NC_035781.1 (61752955 bp)
# chr NC_035782.1 (77061148 bp)
# chr NC_035783.1 (59691872 bp)
# chr NC_035784.1 (98698416 bp)
# chr NC_035785.1 (51258098 bp)
# chr NC_035786.1 (57830854 bp)
# chr NC_035787.1 (75944018 bp)
# chr NC_035788.1 (104168038 bp)
# chr NC_035789.1 (32650045 bp)
# chr NC_007175.2 (17244 bp)

# Single-core mode: setting pid to 1

# Paired-end alignments will be performed
# =======================================

# The provided filenames for paired-end alignments are /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R1.fastq.gz and /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R2.fastq.gz
# Input files are in FastQ format
# Processing reads up to sequence no. 10000 from /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R1.fastq.gz
# Writing a C -> T converted version of the input file zr2096_1_s1_R1.fastq.gz to zr2096_1_s1_R1.fastq.gz_C_to_T.fastq

# Created C -> T converted version of the FastQ file zr2096_1_s1_R1.fastq.gz (10001 sequences in total)

# Processing reads up to sequence no. 10000 from /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R2.fastq.gz
# Writing a G -> A converted version of the input file zr2096_1_s1_R2.fastq.gz to zr2096_1_s1_R2.fastq.gz_G_to_A.fastq

# Created G -> A converted version of the FastQ file zr2096_1_s1_R2.fastq.gz (10001 sequences in total)

# Input files are zr2096_1_s1_R1.fastq.gz_C_to_T.fastq and zr2096_1_s1_R2.fastq.gz_G_to_A.fastq (FastQ)
# Now running 2 instances of Bowtie 2 against the bisulfite genome of /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/ with the specified options: -q --score-min L,0,-0.2 --ignore-quals --no-mixed --no-discordant --dovetail --maxins 500

# Now starting a Bowtie 2 paired-end alignment for CTread1GAread2CTgenome (reading in sequences from zr2096_1_s1_R1.fastq.gz_C_to_T.fastq and zr2096_1_s1_R2.fastq.gz_G_to_A.fastq, with the options: -q --score-min L,0,-0.2 --ignore-quals --no-mixed --no-discordant --dovetail --maxins 500 --norc))
# Found first alignment:
# HWI-C00124:321:CC781ANXX:1:1101:1249:2156_1:N:0:CGATGT/1	77	*	0	0	*	*	0	GAGTTTTTTTGATTATTTGTTGTTTGTTGTTTGTTTGNNNNTNNNTNNGTTTGTTTGTTTGTTTGTTTGTTTGTAAATTTTTTATATTTTTATTTTTTTT	BBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF####<###<##<<<FFFFFFFFFFFFFFFF<FFFFFF/</FFFFFF/B/FFFFF/FFFFFFFF	YT:Z:UP
# HWI-C00124:321:CC781ANXX:1:1101:1249:2156_2:N:0:CGATGT/2	141	*	0	0	*	*	0	CCCCTTAAAAAAAAACAAAACCCTTCATTCAAACAAACTTAAATCCCCTTCACCTAAAAATACTTTATATCAAATTTAATTAAAATTAACCCAATAATTC	BBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF	YT:Z:UP
# Now starting a Bowtie 2 paired-end alignment for CTread1GAread2GAgenome (reading in sequences from zr2096_1_s1_R1.fastq.gz_C_to_T.fastq and zr2096_1_s1_R2.fastq.gz_G_to_A.fastq, with the options: -q --score-min L,0,-0.2 --ignore-quals --no-mixed --no-discordant --dovetail --maxins 500 --nofw))
# Found first alignment:
# HWI-C00124:321:CC781ANXX:1:1101:1249:2156_1:N:0:CGATGT/1	77	*	0	0	*	*	0	GAGTTTTTTTGATTATTTGTTGTTTGTTGTTTGTTTGNNNNTNNNTNNGTTTGTTTGTTTGTTTGTTTGTTTGTAAATTTTTTATATTTTTATTTTTTTT	BBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF####<###<##<<<FFFFFFFFFFFFFFFF<FFFFFF/</FFFFFF/B/FFFFF/FFFFFFFF	YT:Z:UP
# HWI-C00124:321:CC781ANXX:1:1101:1249:2156_2:N:0:CGATGT/2	141	*	0	0	*	*	0	CCCCTTAAAAAAAAACAAAACCCTTCATTCAAACAAACTTAAATCCCCTTCACCTAAAAATACTTTATATCAAATTTAATTAAAATTAACCCAATAATTC	BBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF	YT:Z:UP

# >>> Writing bisulfite mapping results to zr2096_1_s1_R1_bismark_bt2_pe.bam <<<


# Reading in the sequence files /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R1.fastq.gz and /Volumes/web/seashell/bu-serine-wd/18-04-07/zr2096_1_s1_R2.fastq.gz
# 10000 reads; of these:
#   10000 (100.00%) were paired; of these:
#     9720 (97.20%) aligned concordantly 0 times
#     163 (1.63%) aligned concordantly exactly 1 time
#     117 (1.17%) aligned concordantly >1 times
# 2.80% overall alignment rate
# 10000 reads; of these:
#   10000 (100.00%) were paired; of these:
#     9717 (97.17%) aligned concordantly 0 times
#     163 (1.63%) aligned concordantly exactly 1 time
#     120 (1.20%) aligned concordantly >1 times
# 2.83% overall alignment rate
# Processed 10000 sequences in total


# Successfully deleted the temporary files zr2096_1_s1_R1.fastq.gz_C_to_T.fastq and zr2096_1_s1_R2.fastq.gz_G_to_A.fastq

# Final Alignment report
# ======================
# Sequence pairs analysed in total:	10000
# Number of paired-end alignments with a unique best hit:	298
# Mapping efficiency:	3.0%

# Sequence pairs with no alignments under any condition:	9562
# Sequence pairs did not map uniquely:	140
# Sequence pairs which were discarded because genomic sequence could not be extracted:	0

# Number of sequence pairs with unique best (first) alignment came from the bowtie output:
# CT/GA/CT:	152	((converted) top strand)
# GA/CT/CT:	0	(complementary to (converted) top strand)
# GA/CT/GA:	0	(complementary to (converted) bottom strand)
# CT/GA/GA:	146	((converted) bottom strand)

# Number of alignments to (merely theoretical) complementary strands being rejected in total:	0

# Final Cytosine Methylation Report
# =================================
# Total number of C's analysed:	10572

# Total methylated C's in CpG context:	1191
# Total methylated C's in CHG context:	48
# Total methylated C's in CHH context:	117
# Total methylated C's in Unknown context:	0

# Total unmethylated C's in CpG context:	295
# Total unmethylated C's in CHG context:	2453
# Total unmethylated C's in CHH context:	6468
# Total unmethylated C's in Unknown context:	13

# C methylated in CpG context:	80.1%
# C methylated in CHG context:	1.9%
# C methylated in CHH context:	1.8%
# C methylated in unknown context (CN or CHN):	0.0%


# Bismark completed in 0d 0h 0m 51s

# ====================
# Bismark run complete
# ====================



###############output from bismark genome preparation#######################
#Path to genome folder specified as: /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/
#Aligner to be used: Bowtie 2 (default)
#Writing bisulfite genomes out into a single MFA (multi FastA) file

#Bismark Genome Preparation - Step I: Preparing folders

#Path to Bowtie 2 specified: /Users/Shelly/anaconda3/bin/
# Bisulfite Genome Indexer version v0.20.0 (last modified 26 April 2018)
# Created Bisulfite Genome folder /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/Bisulfite_Genome/
# Created Bisulfite Genome folder /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/Bisulfite_Genome/CT_conversion/
# Created Bisulfite Genome folder /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/Bisulfite_Genome/GA_conversion/

# Step I - Prepare genome folders - completed


# Bismark Genome Preparation - Step II: Bisulfite converting reference genome

# conversions performed:
# chromosome	C->T	G->A
# NC_035780.1	11492316	11528162
# NC_035781.1	10879823	10858285
# NC_035782.1	13475475	13496235
# NC_035783.1	10484268	10482193
# NC_035784.1	17306783	17253434
# NC_035785.1	8878985	8876470
# NC_035786.1	9961761	9989843
# NC_035787.1	13145205	13164212
# NC_035788.1	17925605	17932896
# NC_035789.1	5676071	5682065
# NC_007175.2	2827	3882

# Total number of conversions performed:
# C->T:	119229119
# G->A:	119267677

# Step II - Genome bisulfite conversions - completed


# Bismark Genome Preparation - Step III: Launching the Bowtie 2 indexer
# Please be aware that this process can - depending on genome size - take several hours!

# Preparing indexing of CT converted genome in /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/Bisulfite_Genome/CT_conversion/
# Parent process: Starting to index C->T converted genome with the following command:

# /Users/Shelly/anaconda3/bin/bowtie2-build -f genome_mfa.CT_conversion.fa BS_CT

# Settings:
#   Output files: "BS_CT.*.bt2"
#   Line rate: 6 (line is 64 bytes)
#   Lines per side: 1 (side is 64 bytes)
#   Offset rate: 4 (one in 16)
#   FTable chars: 10
#   Strings: unpacked
#   Max bucket size: default
#   Max bucket size, sqrt multiplier: default
#   Max bucket size, len divisor: 4
#   Difference-cover sample period: 1024
#   Endianness: little
#   Actual local endianness: little
#   Sanity checking: disabled
#   Assertions: disabled
#   Random seed: 0
#   Sizeofs: void*:8, int:4, long:8, size_t:8
# Input files DNA, FASTA:
#   genome_mfa.CT_conversion.fa
# Building a SMALL index
# Reading reference sizes
# Preparing indexing of GA converted genome in /Users/Shelly/Desktop/personal/Career/StevenRobetsLab/GENOMES/Cvirginica/v300/Bisulfite_Genome/GA_conversion/
# Child process: Starting to index G->A converted genome with the following command:

# /Users/Shelly/anaconda3/bin/bowtie2-build -f genome_mfa.GA_conversion.fa BS_GA

# Settings:
#   Output files: "BS_GA.*.bt2"
#   Line rate: 6 (line is 64 bytes)
#   Lines per side: 1 (side is 64 bytes)
#   Offset rate: 4 (one in 16)
#   FTable chars: 10
#   Strings: unpacked
#   Max bucket size: default
#   Max bucket size, sqrt multiplier: default
#   Max bucket size, len divisor: 4
#   Difference-cover sample period: 1024
#   Endianness: little
#   Actual local endianness: little
#   Sanity checking: disabled
#   Assertions: disabled
#   Random seed: 0
#   Sizeofs: void*:8, int:4, long:8, size_t:8
# Input files DNA, FASTA:
#   genome_mfa.GA_conversion.fa
# Building a SMALL index
# Reading reference sizes
#   Time reading reference sizes: 00:00:11
# Calculating joined length
# Writing header
# Reserving space for joined string
# Joining reference sequences
#   Time reading reference sizes: 00:00:11
# Calculating joined length
# Writing header
# Reserving space for joined string
# Joining reference sequences
#   Time to join reference sequences: 00:00:07
# bmax according to bmaxDivN setting: 171168832
# Using parameters --bmax 128376624 --dcv 1024
#   Doing ahead-of-time memory usage test
#   Passed!  Constructing with these parameters: --bmax 128376624 --dcv 1024
# Constructing suffix-array element generator
# Building DifferenceCoverSample
#   Building sPrime
#   Building sPrimeOrder
#   V-Sorting samples
#   Time to join reference sequences: 00:00:07
# bmax according to bmaxDivN setting: 171168832
# Using parameters --bmax 128376624 --dcv 1024
#   Doing ahead-of-time memory usage test
#   Passed!  Constructing with these parameters: --bmax 128376624 --dcv 1024
# Constructing suffix-array element generator
# Building DifferenceCoverSample
#   Building sPrime
#   Building sPrimeOrder
#   V-Sorting samples
#   V-Sorting samples time: 00:00:25
#   Allocating rank array
#   Ranking v-sort output
#   V-Sorting samples time: 00:00:25
#   Allocating rank array
#   Ranking v-sort output
#   Ranking v-sort output time: 00:00:07
#   Invoking Larsson-Sadakane on ranks
#   Ranking v-sort output time: 00:00:07
#   Invoking Larsson-Sadakane on ranks
#   Invoking Larsson-Sadakane on ranks time: 00:00:09
#   Sanity-checking and returning
# Building samples
# Reserving space for 12 sample suffixes
# Generating random suffixes
# QSorting 12 sample offsets, eliminating duplicates
# QSorting sample offsets, eliminating duplicates time: 00:00:00
# Multikey QSorting 12 samples
#   (Using difference cover)
#   Multikey QSorting samples time: 00:00:00
# Calculating bucket sizes
# Splitting and merging
#   Splitting and merging time: 00:00:00
# Avg bucket size: 6.84675e+08 (target: 128376623)
# Converting suffix-array elements to index image
# Allocating ftab, absorbFtab
# Entering Ebwt loop
# Getting block 1 of 1
#   No samples; assembling all-inclusive block
#   Invoking Larsson-Sadakane on ranks time: 00:00:10
#   Sanity-checking and returning
# Building samples
# Reserving space for 12 sample suffixes
# Generating random suffixes
# QSorting 12 sample offsets, eliminating duplicates
# QSorting sample offsets, eliminating duplicates time: 00:00:00
# Multikey QSorting 12 samples
#   (Using difference cover)
#   Multikey QSorting samples time: 00:00:00
# Calculating bucket sizes
# Splitting and merging
#   Splitting and merging time: 00:00:00
# Avg bucket size: 6.84675e+08 (target: 128376623)
# Converting suffix-array elements to index image
# Allocating ftab, absorbFtab
# Entering Ebwt loop
# Getting block 1 of 1
#   No samples; assembling all-inclusive block
#   Sorting block of length 684675328 for bucket 1
#   (Using difference cover)
#   Sorting block of length 684675328 for bucket 1
#   (Using difference cover)
#   Sorting block time: 00:11:05
# Returning block of 684675329 for bucket 1
# Exited Ebwt loop
# fchr[A]: 0
# fchr[C]: 342402452
# fchr[G]: 461631571
# fchr[T]: 461631571
# fchr[$]: 684675328
# Exiting Ebwt::buildToDisk()
# Returning from initFromVector
# Wrote 232427948 bytes to primary EBWT file: BS_GA.1.bt2
# Wrote 171168840 bytes to secondary EBWT file: BS_GA.2.bt2
# Re-opening _in1 and _in2 as input streams
# Returning from Ebwt constructor
# Headers:
#     len: 684675328
#     bwtLen: 684675329
#     sz: 171168832
#     bwtSz: 171168833
#     lineRate: 6
#     offRate: 4
#     offMask: 0xfffffff0
#     ftabChars: 10
#     eftabLen: 20
#     eftabSz: 80
#     ftabLen: 1048577
#     ftabSz: 4194308
#     offsLen: 42792209
#     offsSz: 171168836
#     lineSz: 64
#     sideSz: 64
#     sideBwtSz: 48
#     sideBwtLen: 192
#     numSides: 3566018
#     numLines: 3566018
#     ebwtTotLen: 228225152
#     ebwtTotSz: 228225152
#     color: 0
#     reverse: 0
# Total time for call to driver() for forward index: 00:14:20
# Reading reference sizes
#   Sorting block time: 00:13:18
# Returning block of 684675329 for bucket 1
#   Time reading reference sizes: 00:00:09
# Calculating joined length
# Writing header
# Reserving space for joined string
# Joining reference sequences
#   Time to join reference sequences: 00:00:07
#   Time to reverse reference sequence: 00:00:00
# bmax according to bmaxDivN setting: 171168832
# Using parameters --bmax 128376624 --dcv 1024
#   Doing ahead-of-time memory usage test
#   Passed!  Constructing with these parameters: --bmax 128376624 --dcv 1024
# Constructing suffix-array element generator
# Building DifferenceCoverSample
#   Building sPrime
#   Building sPrimeOrder
#   V-Sorting samples
#   V-Sorting samples time: 00:00:29
#   Allocating rank array
#   Ranking v-sort output
#   Ranking v-sort output time: 00:00:07
#   Invoking Larsson-Sadakane on ranks
#   Invoking Larsson-Sadakane on ranks time: 00:00:11
#   Sanity-checking and returning
# Building samples
# Reserving space for 12 sample suffixes
# Generating random suffixes
# QSorting 12 sample offsets, eliminating duplicates
# QSorting sample offsets, eliminating duplicates time: 00:00:00
# Multikey QSorting 12 samples
#   (Using difference cover)
#   Multikey QSorting samples time: 00:00:00
# Calculating bucket sizes
# Splitting and merging
#   Splitting and merging time: 00:00:00
# Avg bucket size: 6.84675e+08 (target: 128376623)
# Converting suffix-array elements to index image
# Allocating ftab, absorbFtab
# Entering Ebwt loop
# Getting block 1 of 1
#   No samples; assembling all-inclusive block
#   Sorting block of length 684675328 for bucket 1
#   (Using difference cover)
# Exited Ebwt loop
# fchr[A]: 0
# fchr[C]: 223134775
# fchr[G]: 223134775
# fchr[T]: 342402452
# fchr[$]: 684675328
# Exiting Ebwt::buildToDisk()
# Returning from initFromVector
# Wrote 232427948 bytes to primary EBWT file: BS_CT.1.bt2
# Wrote 171168840 bytes to secondary EBWT file: BS_CT.2.bt2
# Re-opening _in1 and _in2 as input streams
# Returning from Ebwt constructor
# Headers:
#     len: 684675328
#     bwtLen: 684675329
#     sz: 171168832
#     bwtSz: 171168833
#     lineRate: 6
#     offRate: 4
#     offMask: 0xfffffff0
#     ftabChars: 10
#     eftabLen: 20
#     eftabSz: 80
#     ftabLen: 1048577
#     ftabSz: 4194308
#     offsLen: 42792209
#     offsSz: 171168836
#     lineSz: 64
#     sideSz: 64
#     sideBwtSz: 48
#     sideBwtLen: 192
#     numSides: 3566018
#     numLines: 3566018
#     ebwtTotLen: 228225152
#     ebwtTotSz: 228225152
#     color: 0
#     reverse: 0
# Total time for call to driver() for forward index: 00:16:36
# Reading reference sizes
#   Time reading reference sizes: 00:00:09
# Calculating joined length
# Writing header
# Reserving space for joined string
# Joining reference sequences
#   Time to join reference sequences: 00:00:07
#   Time to reverse reference sequence: 00:00:01
# bmax according to bmaxDivN setting: 171168832
# Using parameters --bmax 128376624 --dcv 1024
#   Doing ahead-of-time memory usage test
#   Passed!  Constructing with these parameters: --bmax 128376624 --dcv 1024
# Constructing suffix-array element generator
# Building DifferenceCoverSample
#   Building sPrime
#   Building sPrimeOrder
#   V-Sorting samples
#   V-Sorting samples time: 00:00:26
#   Allocating rank array
#   Ranking v-sort output
#   Ranking v-sort output time: 00:00:07
#   Invoking Larsson-Sadakane on ranks
#   Invoking Larsson-Sadakane on ranks time: 00:00:10
#   Sanity-checking and returning
# Building samples
# Reserving space for 12 sample suffixes
# Generating random suffixes
# QSorting 12 sample offsets, eliminating duplicates
# QSorting sample offsets, eliminating duplicates time: 00:00:00
# Multikey QSorting 12 samples
#   (Using difference cover)
#   Multikey QSorting samples time: 00:00:00
# Calculating bucket sizes
# Splitting and merging
#   Splitting and merging time: 00:00:00
# Avg bucket size: 6.84675e+08 (target: 128376623)
# Converting suffix-array elements to index image
# Allocating ftab, absorbFtab
# Entering Ebwt loop
# Getting block 1 of 1
#   No samples; assembling all-inclusive block
#   Sorting block of length 684675328 for bucket 1
#   (Using difference cover)

#   Sorting block time: 00:11:47
# Returning block of 684675329 for bucket 1
# Exited Ebwt loop
# fchr[A]: 0
# fchr[C]: 342402452
# fchr[G]: 461631571
# fchr[T]: 461631571
# fchr[$]: 684675328
# Exiting Ebwt::buildToDisk()
# Returning from initFromVector
# Wrote 232427948 bytes to primary EBWT file: BS_GA.rev.1.bt2
# Wrote 171168840 bytes to secondary EBWT file: BS_GA.rev.2.bt2
# Re-opening _in1 and _in2 as input streams
# Returning from Ebwt constructor
# Headers:
#     len: 684675328
#     bwtLen: 684675329
#     sz: 171168832
#     bwtSz: 171168833
#     lineRate: 6
#     offRate: 4
#     offMask: 0xfffffff0
#     ftabChars: 10
#     eftabLen: 20
#     eftabSz: 80
#     ftabLen: 1048577
#     ftabSz: 4194308
#     offsLen: 42792209
#     offsSz: 171168836
#     lineSz: 64
#     sideSz: 64
#     sideBwtSz: 48
#     sideBwtLen: 192
#     numSides: 3566018
#     numLines: 3566018
#     ebwtTotLen: 228225152
#     ebwtTotSz: 228225152
#     color: 0
#     reverse: 1
# Total time for backward call to driver() for mirror index: 00:15:05
#   Sorting block time: 00:13:49
# Returning block of 684675329 for bucket 1
# Exited Ebwt loop
# fchr[A]: 0
# fchr[C]: 223134775
# fchr[G]: 223134775
# fchr[T]: 342402452
# fchr[$]: 684675328
# Exiting Ebwt::buildToDisk()
# Returning from initFromVector
# Wrote 232427948 bytes to primary EBWT file: BS_CT.rev.1.bt2
# Wrote 171168840 bytes to secondary EBWT file: BS_CT.rev.2.bt2
# Re-opening _in1 and _in2 as input streams
# Returning from Ebwt constructor
# Headers:
#     len: 684675328
#     bwtLen: 684675329
#     sz: 171168832
#     bwtSz: 171168833
#     lineRate: 6
#     offRate: 4
#     offMask: 0xfffffff0
#     ftabChars: 10
#     eftabLen: 20
#     eftabSz: 80
#     ftabLen: 1048577
#     ftabSz: 4194308
#     offsLen: 42792209
#     offsSz: 171168836
#     lineSz: 64
#     sideSz: 64
#     sideBwtSz: 48
#     sideBwtLen: 192
#     numSides: 3566018
#     numLines: 3566018
#     ebwtTotLen: 228225152
#     ebwtTotSz: 228225152
#     color: 0
#     reverse: 1
# #Total time for backward call to driver() for mirror index: 00:16:48


----
****
