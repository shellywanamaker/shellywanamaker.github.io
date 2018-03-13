---
layout: post
title: DNA Isolation from frozen Oly larvae
---

It is happening. My trial last week worked sufficiently well in the samples whic started with ~30ug tissue, so I'm going to move forward with the actual extraction.  As per Sam's suggestion, I read the MethylMiner kit instructions to see what finished product I'll need for the DNA methylation enrichment step.  Here's what I learned: 

  * The kit provides materials for 25 affinity-based separations when starting with 5 ng–1 μg of fragmented genomic input DNA, and is scalable up to a single separatation using 25 μg of input DNA. The methlyated DNA may be eluted into as many as 8 fractions per separation.  
  * For downstream analyses like PCR and qPCR, as little as 5 ng of input DNA can be used. **For applications that require larger amounts of methylated DNA, such as library construction for high-throughput sequencing or amplification and labeling for microarray analysis, starting amounts of 10–25 μg of fragmented input DNA are most appropriate**, though in some cases as little as 1 μg can be used. Typical total yields of mammalian CpG-methylated DNA are 3–20% of the input mass of DNA, or 0.3–5.0 μg when starting with 10–25 μg. 
  * DNA may be fragmented using your method of choice. DNA must be fragmented to an average size of less than 1,000 bp and should be in DNasefree water, TE buffer, or another low ionic-strength, neutral pH buffer. The fragment size should be appropriate for your downstream analysis. For example, DNA fragmented to an average length of ~250 bp is suitable for assay by real-time quantitative PCR (qPCR). Similarly, DNA fragmented to an average length of ~100–200 bp is suitable for fragment library construction for short-read high-throughput sequencing.  
  * For input amounts <1ug, add 5 ng–1 μg, added volume should be ≤ 80 μl 
  * For input amounts 1 μg-10μg, the fragmented DNA should be at a concentration of 25 ng/μl or higher; added volume will be 40–400 μl.   
  * **For input amounts 10-25ug,  the fragmented DNA should be at a concentration of 25 ng/μl; added volume will be 400–1000 μl.**   

Since I need to shoot for at least 10ug DNA per sample (which is a lot), I will do the following: 
  * Increase my initial tissue mass to 50mg, which is the max I can do for each column.  
  * Extract 3 replicates from each tissue sample; I should have plenty of larvae in each sample to do so.  
  * I should get ~3ug DNA per sample, given the yield from test run. 
  * For final elution volume, I should not exceed 300uL.  
  
The vial of Protease K ran out, so switched to a new one for samples 7C, 8A, 8B, 8C.  Note: The vial I used for most of the samples looked like it had a bit of gelatinous precipitate in it.  It's the same vial as I used for my test samples, but since I was using the very last of it, perhaps I noticed/used more of the precipitate. Hopefully that doesn't impact yield. 

Optional steps / adjustments made: 
  * Incubated for ~2hours at 60C  
  * Step 6 - did optional step where I added 200ul more ML1 Buffer, vortexed, centrifuged, and pulled off more of the top aqueous phase.  
  * Adjusted buffers to accommodate increased volume:  
    * In step 7, matched the total volume of my samples, ranged from 500um-900ul.  (volumes documented in excel)  
    * Had to transfer all samples to large tube to accommodate larger volume   
    * Matched aqueous phase volume with ethanol (same volume as used in 7)  
    * Increased HBC buffer to 750ul, and centrifuged for 1 minute (as opposed to 30 seconds)  
    * Increased both DNA Wash Buffers to 800ul  
    * Final elution volume: 2 rinses of 65ul, and a final re-rinse with eluate. Total volume in each tube = 130ul, minus 5ul used for assay.  Since I have 3 reps of each sample, that's 3 * 125=175ul per sample, at 3 varying concentrations.  Final concentrations:  
    

DNA VIAL # | SAMPLE # | Date Collected | Treatment | ~# larvae in   fsample | Tissue Type | tissue mass (ug) | Buffer Vol (if mass >30ug) | DNA Concentration (ng/uL) | Total ng DNA after assay | 1% of DNA (ng) per rep | 1% of DNA (ng) for each sample
-- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | --
DNA L-1-A | 6-B | 5/22/17 | SN-10-Low-B | 118,433 | Frozen larvae | 41.3 | 481.83 | 17.600 | 2,200 | 22 | 70.50
DNA L-1-B | 6-B | 5/22/17 | SN-10-Low-B |   | Frozen larvae | 45.2 | 527.33 | 18.800 | 2,350 | 24 |  
DNA L-1-B | 6-B | 5/22/17 | SN-10-Low-B |   | Frozen larvae | 35.6 | 415.33 | 20.000 | 2,500 | 25 |  
DNA L-2-A | 62-A | 6/14/17 | SN-10-Low-B | 297,807 | Frozen larvae | 51.8 | 604.33 | 25.500 | 3,188 | 32 | 79.13
DNA L-2-B | 62-A | 6/14/17 | SN-10-Low-B |   | Frozen larvae | 52 | 606.67 | 17.000 | 2,125 | 21 |  
DNA L-2-C | 62-A | 6/14/17 | SN-10-Low-B |   | Frozen larvae | 51.3 | 598.50 | 20.800 | 2,600 | 26 |  
DNA L-3-A | 67-A | 6/15/17 | SN-10-Low-B | 80,000 | Frozen larvae | 49.6 | 578.67 | 29.000 | 3,625 | 36 | 103.13
DNA L-3-B | 67-A | 6/15/17 | SN-10-Low-B |   | Frozen larvae | 37.5 | 437.50 | 28.000 | 3,500 | 35 |  
DNA L-3-C | 67-A | 6/15/17 | SN-10-Low-B |   | Frozen larvae | 40.4 | 471.33 | 25.500 | 3,188 | 32 |  
DNA L-4-A | 26-A | 5/27/27 | SN-10-Low-B | 104,500 | Frozen larvae | 43.7 | 509.83 | 29.500 | 3,688 | 37 | 111.25
DNA L-4-B | 26-A | 5/27/27 | SN-10-Low-B |   | Frozen larvae | 38.9 | 453.83 | 29.500 | 3,688 | 37 |  
DNA L-4-C | 26-A | 5/27/27 | SN-10-Low-B |   | Frozen larvae | 38.1 | 444.50 | 30.000 | 3,750 | 38 |  
DNA L-5-A | 77-A | 6/19/17 | SN-6-Ambient-A | 107,100 | Frozen larvae | 36.5 | 425.83 | 23.500 | 2,938 | 29 | 92.50
DNA L-5-B | 77-A | 6/19/17 | SN-6-Ambient-A |   | Frozen larvae | 32.4 | 378.00 | 23.500 | 2,938 | 29 |  
DNA L-5-C | 77-A | 6/19/17 | SN-6-Ambient-A |   | Frozen larvae | 39.3 | 458.50 | 27.000 | 3,375 | 34 |  
DNA L-6-A | 10-A | 5/23/17 | SN-6-Ambient-B | 143,733 | Frozen larvae | 31.4 | 366.33 | 26.500 | 3,313 | 33 | 99.31
DNA L-6-B | 10-A | 5/23/17 | SN-6-Ambient-B |   | Frozen larvae | 39.6 | 462.00 | 28.200 | 3,525 | 35 |  
DNA L-6-C | 10-A | 5/23/17 | SN-6-Ambient-B |   | Frozen larvae | 30.2 | 352.33 | 24.750 | 3,094 | 31 |  
DNA L-7-A | 45-A | 6/5/17 | SN-6-Ambient-B | 378,333 | Frozen larvae | 53 | 618.33 | 25.500 | 3,188 | 32 | 89.06
DNA L-7-B | 45-A | 6/5/17 | SN-6-Ambient-B |   | Frozen larvae | 47.2 | 550.67 | 22.000 | 2,750 | 28 |  
DNA L-7-C | 45-A | 6/5/17 | SN-6-Ambient-B |   | Frozen larvae | 50.1 | 584.50 | 23.750 | 2,969 | 30 |  
DNA L-8-A | 69-A | 6/15/17 | SN-6-Ambient-B | 176,400 | Frozen larvae | 40.4 | 471.33 | 29.500 | 3,688 | 37 | 104.94
DNA L-8-B | 69-A | 6/15/17 | SN-6-Ambient-B |   | Frozen larvae | 43.7 | 509.83 | 28.050 | 3,506 | 35 |  
DNA L-8-C | 69-A | 6/15/17 | SN-6-Ambient-B |   | Frozen larvae | 43.6 | 508.67 | 26.400 | 3,300 | 33 |  


