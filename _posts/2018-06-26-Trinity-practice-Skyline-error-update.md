---
layout: post
title: Learning more about Trinity and working with large data sets; Update on Skyline issue
categories: [bairdi, 2015Oysterseed[
tags: Trinity, DIA
---
Today I read more about using Trinity and functional genomics as well as got some information back from Nick from Skyline in regards to my high error rate in peak-picking.

## Trinity  
Steven sent me this code last night (added my notes for what each line does)(GitHub issue [#304](https://github.com/RobertsLab/resources/issues/304)):   
--seqType fq \       
`the sequence reads are of fastq type (there is a quality value given to each read)`    
--max_memory 100G         
`the amount of memory (temporary data storage space) to be allocated to running Trinity`      
--left /gscratch/srlab/sr320/data/geoduck-RNA-seq/NR012_S1_L001_R1_001.fastq,
/gscratch/srlab/sr320/data/geoduck-RNA-seq/NR012_S1_L002_R1_001.fastq       
`look at the left reads of the paired data`      
--right /gscratch/srlab/sr320/data/geoduck-RNA-seq/NR012_S1_L001_R2_001.fastq,
/gscratch/srlab/sr320/data/geoduck-RNA-seq/NR012_S1_L002_R2_001.fastq       
`look at the right reads of the paired data`     
--trimmomatic       
`trim the reads for quality`    
--CPU 28     
`number of computer processing units to allocate to running Trinity``

I have been looking at this page: [Running Trinity](https://github.com/trinityrnaseq/trinityrnaseq/wiki/Running-Trinity)

And Steven also sent me this paper: [OPPORTUNITIES IN FUNCTIONAL GENOMICS: A PRIMER ON LAB AND
COMPUTATIONAL ASPECTS](https://d.pr/f/7oPLDR)   
And a link to praciticing navigating Command Line: [Navigating Command Line](https://sr320.github.io/course-fish497-2018/assignments/bash/)

## Skyline error update
Nick from Skyline responded to my request for information on my high error rates. I'm not 100% sure I understand what is going on, but I forwarded the response to Emma and am looking into what this means right now. 

Link to my post and Skyline Support Team's responses: [here](https://skyline.ms/announcements/home/support/thread.view?rowId=36981)
