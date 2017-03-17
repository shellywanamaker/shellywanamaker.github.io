---
layout: post
title: Experimental Pecan Run using Gigas genome
---

#### I restarted Pecan using 1 of my geoduck .mzML files, and the full digested _c. gigas_ proteome.  
It was simple to start, and notice that I was successfully able to use the `--backgroundProteome` input! The concern is, as always, whether Emu has enough memory to complete all 80 isolation scheme windows for this one file. Here's a summary:

1. Created new folder containing the following:
  * Isolation scheme (.csv file)
  * .mzML data file
  * .txt file with path to .mzML data file
  * .txt file with path to background proteome/database
  * Digested _c. gigas_ proteome, with the PRTC standards added
  
2. Navigated to the newly created folder containing all Pecan inputs and entered the following: 

  `pecanpie -o ~/Documents/Laura/DNR_geoduck/Pecan7_output/ --backgroundProteome Combined-digested-edited-gigas-QC_Mass400to6000.tabular -n DNR_geoduck_gigasgenome --pecanMemRequest 10 /home/srlab/Documents/Laura/DNR_geoduck/Pecan-inputs7/DNR_Geoduck_mzMLpath.txt /home/srlab/Documents/Laura/DNR_geoduck/Pecan-inputs7/DNR_Geoduck_DatabasePath.txt /home/srlab/Documents/Laura/DNR_geoduck/Pecan-inputs7/DNR_Geoduck_IsolationScheme.csv --fido --jointPercolator --isolationSchemeType BOARDER --overwrite`  

  `User input --pecanMemRequest 10.00G is smaller than empirical estimate 136.01G  
  Would you like to use the empirical estimate instead? (Y/N) N`  

3. Navigated to the `pecanpie` generated directory and executed the `run_search.sh` file:  
  `cd ../Pecan7_output/  
  ./run_search.sh  
  Your job-array 630.1-80:1 ("pecan_x104db") has been submitted  
  Your job 631 ("prcltr_x104db") has been submitted  
  Your job 632 ("jPrcltr_x156cc") has been submitted  
  Your job 633 ("pecan2blib.job") has been submitted`

4. Navigated to the three pecan directories to make all .job files executable via `chmod +x [.job file]

5. Checked to make sure pecan jobs are queued and running: 
`qstat -f`      
