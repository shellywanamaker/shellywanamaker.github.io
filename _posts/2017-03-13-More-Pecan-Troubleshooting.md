---
layout: post
title: More Pecan trouble-shooting
---

### 

**2/22-3/10:** Pecan ran for nearly 3 weeks, and although it appeared to have been functioning correctly Sean discovered that there was a problem: not enough memory to save all the feature files (there should be 80 per sample; 1 per isolation window). It would simply move on to the next sample, and thus I wasn't getting all the peptides analyzed. Check out [Sean's notebook entry](https://genefish.wordpress.com/2017/03/11/proteomics/) for more details.

**3/9:** [Sean did a test run](https://genefish.wordpress.com/2017/03/10/success-with-pecan/) on Roadrunner with one data file and just 3 isolation windows using 3 of the 16 logical cores (we used 14 logical cores during the long run), and it worked fine, completing with a .blib file and everything in 10 hours!

**Friday 3/10:** We killed the long pecan run ("Pecan3") - good news is that all the blanks worked so I won't need to re-run them - and **restarted pecan using 4 logical cores on Emu, using the 80 isolation windows, with only 4 data files queued. I selected the 4 data files so I wouldh have results from two sites, one each with both eelgrass and no-eelgrass geoduck represented. The estimated time was ~13.5 days to complete 2 data files (aka 2 samples).** This is assuming that only using 3 isolation windows and 3 logical cores = 10 hours per sample file, and that increasing the logical cores from 3 to 4 results in a linear decrease in time/isolation window. With these settings I should have had data from 1 sample file done in a week, which I'll plan on using for the poster. This Pecan run was called "Pecan4." [Check out GitHub Issue 526](https://github.com/sr320/LabDocs/issues/526)

**Monday 3/13** Unfortunately we ran into the same memory issue as before, so killed the Pecan4 run on the morning of Monday 3/13.  I then changed the settings to request 10GB memory, and only use 3 of Emu's logical cores, and restarted Pecan with the same inputs. 

### Here's a breakdown of how I made the adjustments (with help from Sean):

#### Logged in as Sean to decrease the logical cores used:  
   * in Terminal typed `sudo qmon" to open the QMON Main Control GUI  
   * Selected the "Queue Controls" button, and then highlighted the main queu line and selected the "modify" button:  

   ![img_7151](https://cloud.githubusercontent.com/assets/17264765/23874061/8c0c3e1a-07f1-11e7-8b1b-37c1ba3fd12e.JPG)  

   * In the "Slots" cell clicked the down arrow to decrease slots from 4 to 3, cliked "Ok" (note: you must use the arrows to change slot numbers; it didn't work if you highlighted and changed the number manually).   

#### Logged back in as srlab to kill Pecan:  
   * type `qstat -f` to view in-progress and queued job numbers  
   * typed `qdel [job#]`, e.g. `qdel 601`, for each job. Now Pecan has stopped running.  

#### Re-ran Pecan  
   * Navigated to the directory with my Pecan input files, ~/Documents/Laura/DNR_geoduck/Pecan-inputs2/  
   * Re-ran Pecan (bolded inputs modified):
      `pecanpie **-o ~/Documents/Laura/DNR_geoduck/Pecan5_output/** -s laurageo -n DNR_geoduck_SpLibrary **--pecanMemRequest 10** /home/srlab/Documents/Laura/DNR_geoduck/Pecan-inputs2/DNR_Geoduck_mzMLpath.txt /home/srlab/Documents/Laura/DNR_geoduck/Pecan-inputs2/DNR_Geoduck_DatabasePath.txt /home/srlab/Documents/Laura/DNR_geoduck/Pecan-inputs2/DNR_Geoduck_IsolationScheme.csv --fido --jointPercolator --isolationSchemeType BOARDER --overwrite` 

    ![2017-03-13_run-pecan-commands](https://cloud.githubusercontent.com/assets/17264765/23874729/f0581ebe-07f3-11e7-95cb-4cca6ad75ac5.png)
     
#### Made the percolator .job and pecan2blib .job files executable (Sean found that Pecan isn't doing this automatically, so need to do it manually):  
   * Navigate to /percolator/ directory, and type `xmod +x [.job]` for all .job files.  
   * Navigate to /pecan2blib/ directory, and type `xmod +x pecan2blib.job` (there's only one .job file in this directory).  
     
   ![2017-03-13_making-percolator-jobs-executable](https://cloud.githubusercontent.com/assets/17264765/23875173/b1e8bfa6-07f5-11e7-8f12-d086db2c702e.png)
   ![2017-03-13_making-blib-jobs-executable](https://cloud.githubusercontent.com/assets/17264765/23875176/b333d2c4-07f5-11e7-8582-bca20f8af23e.png)
     
#### Checked out the job queue by typing `qstat -f` in any terminal window:  

  ![2017-03-13_initial-queue](https://cloud.githubusercontent.com/assets/17264765/23874865/78cd44e0-07f4-11e7-82b5-772af04d1439.png)

How, you might ask, did Sean know that Pecan wasn't correctly running all isolation windows? From Sean: "I looked at the number of .feature files (in the /Pecan4_output/pecan/ directory) compared to the run number it was on. When I looked yesterday it was processing run number 60, but there was only like 10 feature files." Meaning, there should be the same # of feature files as the number of runs (aka isolation windows). 
