---
Layout: post
Title: Cleaning SRM data in Skyline
---

### First steps, done on 8/8

#### Clean up data in Skyline: 
Used final version of sequence file (which I uploaded from the Vantage computer to Owl @ UWPR on 7/28) to associate .raw files with samples - determine which samples are which for the duplicate named files. The final sequence file, which will also contain the time loaded into tray & injection time (in case this is a factor), is located in the Data folder of this repo, [here](https://github.com/laurahspencer/Geoduck-DNR/blob/master/Data/2017-07-28_SRM-Sequence-final.xlsx).  
![image](https://user-images.githubusercontent.com/17264765/29094591-baa36fd0-7c42-11e7-9e11-6dc737947edd.png)

#### Make sure I have all data in Skyline
Confirmed in Skyline by going to _Edit_ -> _Manage Results_ & cross-checking data file names in Skyline with the sequence file, and the .raw files on Owl. 
![image](https://user-images.githubusercontent.com/17264765/29094792-7dabfa74-7c43-11e7-8a40-3a4f65eab977.png)

#### Confirm correct peaks picked & determine if any transitions/peptides are un-usable
Referenced the [Predicted SRM Retention Time calculations](https://github.com/laurahspencer/Geoduck-DNR/blob/master/Data/2017-07-18-Predicted-SRM-Retention-Times-LHS.xlsx) I did at the beginning of my mass spec run to confirm correct peaks picked. ID'd peptides with lots of noice, and no clear peak at the predicted RT. Here is a screen shot of the predicted RT, with poor quality peptides in red. NOTE: Need at least 2 transitions for each peptide to move forward with analysis. 
![image](https://user-images.githubusercontent.com/17264765/29098024-ee33168e-7c51-11e7-912f-a0fd8d2b2a18.png)

#### Next steps: 
  * Adjust peak boundaries
  * Determine if any .raw files should be discarded, based on poor-quality data and those that I re-ran & re-made
  * Look @ all blank runs to see if there are any weird signals
  * Check out blank samples
  * Download data! Protein, peptide, transition, area, retention time
  * Work through Emma's suggestions: normalization, dilution durve check, NMDS, ROC curves, data upload
