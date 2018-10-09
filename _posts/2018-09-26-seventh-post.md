---
layout: post
title: Wed. Sept 26, 2018
---

## My goals for today  
* Work on Bismark alignments  
	- Trying different alignment score settings:  
		- Looked into bowtie2 alignment manual  
		- alignement score is dependent on matches and mismatches  
			- alignment score of 0 = 100% perfect match  
			- 1 mismatch = -6 score  
			- 1 ambinguous character = 1  
			- if there's a gap in the reference seq. or the read seq: 5 + 3*gap length  
				- a 2bp gap in the read seq. = 2 insertions (relative to the read seq.)  
				- a 2bp gap in the ref. seq. = 2 deletions (relative to the read seq.)  
		- default in normal alignment mode is L, 0, -0.2 (where L = linear, the first number = the intercept, and the last number = the slope, and x = read length). The default specifies for reads that are 100bp the alignment score must be >= -20.   
			- in --local alignment mode, G is used and G = natural log (i.e. f(x) = 1.0 + 5.4ln(x), where x is the length of the read). The min score default in local mode is 26 for 100 bp read.   

	- my old alignment settings for the CrY2H-seq pipeline were:  
		- --local mode  
		- mismatch <= 2  
		- indels <= 2  
		- 30bp match length  
		- no softclipping in the beginning of a read because that is where the quality should be the best  		

	- Compare different alignment score thresholds (i.e.-0.6, -1.2, etc.)  
		- **look at % aligned**  
		- **run dedup.**  

* Caught up with Brent (brentv@uw.edu)    
	- set up meeting time with Steven and Brent (Monday Oct.1  @ 1:30)  
	- Pt. Whitney can bring in 80 total animals  
	- possible conditions could include  
		- an acute low treatment (i.e. pH shock for 1 month)  
		- different collection times to expose different stages of gonad dev.  
	- **need to do a power analysis to see # animals needed and # of possible treatments**  
	- how to infuse CO2 in seawater tanks?  
		- venturi injector in intake line?  
		- **find out it's done in MOATS**  

----
****