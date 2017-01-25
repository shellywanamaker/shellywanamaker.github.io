---
layout: post
title: Random prep for Mass Spec 
---

There were a few last items that needed to happen prior to injecting samples into Mass Spec. Here they are! 

### Make peptide histograms from past geoduck samples  
* Log on to [Proteomics Resource site](https://proteomicsresource.washington.edu/net/gs/vol4/shared/nunnlab/search/); *need (credentials)  
* Find geoduck peptide .xml files via the following path:  
  * emmats -> TPP -> geoduck -> transcriptome -> select any 10 files with the format "interact ... pep.xml"
* There were more than 10 .xml peptide files, so I used a random number generator to select the following 10 files: 11, 24, 27, 29, 31, 33, 65, 67, 84, 87  
* For each file, go to **pick columns** -> add **mz ratio** column -> **update** -> **other actions** -> **export**  
* After exporting, use FileZilla to transfer 10 .xml files to local computer (need credentials)  
* Combined data in 10 files into 1 file via excel (pretty straight forward).
* Used R Studio to generate a histogram (for all 10 samples combined) of m/z ratio:  
 
 ![geoduck m/z histogram](https://github.com/laurahspencer/LabNotebook/blob/master/images/2017-01-24_geoduck-pep-histogram.png?raw=true)
 
 * From this histogram Emma suggested that we go with a 450-850 m/z analysis window for my samples.


### Add PRTC to samples 

We must add a known amount of PRTC QC peptide mix to each sample, which provides a standard concentration of known peptides. Here's how we did it:  
 * Ordered Peptide Retention Time Calibration Mixture [ThermoFisher #88320](https://www.thermofisher.com/order/catalog/product/88320). This is 50ul of 0.5pmol/ul   
 * Diluted PRTC to 200 fmol/ul  
   * Pipetted 20ul of PRTC into new tube  
   * Added 30ul acetonitrile, vortexed & centrifuged lightly
   * Final volume is 50ul of a [200fmol/ul]  
Prepare new sample tubes:
  * Pipetted 3.125 acetonitrile into new, labeled sample tubes  
  * Added Pipetted 10ul of each sample into new tubes (each sample has protein concentration of 0.5ug/ul)
  * Added 1.875ul of the 200fmol/ul PRTC  
  * Vortexed & centrifuged lightly  
  * Final volume is 15 ul of sample + PRTC + Acetonitrile. Should have 5ug of peptides total in each tube. 
  
### Pack Mass Spec columns: 
  * We watched/helped Emma pack the columns for the Mass Spec. This was a very precarious/labor intensive step. I will not go into the details here, but this step should be started at least a few days prior to starting on the Mass Spec, as the column can take several hours to pack, and one needs 2-3 columns.  



 
   
