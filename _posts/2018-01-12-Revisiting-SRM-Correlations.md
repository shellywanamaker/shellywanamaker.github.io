---
layout: post
title: SRM Analysis, revisiting correlations between abundance & environment
---

### Taking a simpler approach to identifying correlations between environmental data and protein abundances.  Goals of today was to:  
  1. Subselect salinity data, generate summary stats, to be able to include in analysis  
  2. Generate correlation plots with R^2 and P-values between differentially abundant proteins and environmental summary stats  
  3. From plots, select env. summary stats to use in 1) multiple linear regression model & 2) structural equation model  
  4. Generate correlation plots with selected env. variables to identify potential interactions  
  5. Run multiple linear regression model  
  6. Run structural equation model   
  7. Interpret results from both  
  8. Revise paper to include results from these tasks  
  
### 1. Subselected salinity data, generate summary stats, include in analysis  
In one of our team meetings we made the determination to ignore salinity data for the time being, since several probes malfunctioned.  Up until this point I have performed all tasks/stats on salinity data alongside the other parameters, but ignored salinity when analyzing correlations.  Today I generated correlation plots and found salinity may play a role.  So, I decided to clean up salinity data as much as I could to include in my analysis. To do so, I reviewed raw salinity data via [this plotly plot](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-Salinity-series.html).  Determined that the following salinity data needed to be removed due to probe malfunction:  All CIE; FBB > 7/3 @ 09:50; WBB > 6/25 @ 05:30.  I then removed all outliers from the updated salinity time-series data, and re-plotted. [This is the resulting plot](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-Salinity-series-noOutliers.html)

#### Raw salinity data: 
![image](https://user-images.githubusercontent.com/17264765/34900993-bdf5b09c-f7b9-11e7-8f4f-f272d8ae715c.png)

#### Bad data & outliers removed: 
![image](https://user-images.githubusercontent.com/17264765/34900998-c79b9a6c-f7b9-11e7-80dd-69cf1ed746ae.png)

### 2. Generated correlation plots with R^2 and P-values between differentially abundant proteins and environmental summary stats  
Discovered the excellent `ggscatter` function in the `ggpubr` library to generate correlation plots.  I generated correlation plots for the 3 differentially abundant proteins (HSP90, Puromycin-sensitive aminopeptidase, Trifunctional Enzyme), using Pep1 for each. Reminder: Pep1 is the peptide in that protein with the highest overall abundance across all samples.  
  * [Heat Shock Protein 90 correlation plots](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/blob/master/analyses/SRM/HSP90-corr-plots.pdf)  
  * [Puromycin-sensitive aminopeptidase](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/blob/master/analyses/SRM/Puromycin-corr-plots.pdf)  
  * [Trifuctional-enzyme](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/blob/master/analyses/SRM/Trifunctional-corr-plots.pdf) 

### 3. From plots, selected env. summary stats to use in models

Selected the following environmental parameters per the respective proteins for model constructions, using an approximate alpha=0.01 as cutoff: % Growth, DO.sd, DO.var, pH.sd.1, salinity.mean, salinity.sd.1.  Here are the correlation plots for these parameters, using HSP90 for the purposes of this example:

![image](https://user-images.githubusercontent.com/17264765/34901737-61139204-f7c3-11e7-83b2-4c056801fa5d.png)
![image](https://user-images.githubusercontent.com/17264765/34901784-ff143e68-f7c3-11e7-99ce-9fb09b6eef86.png)
![image](https://user-images.githubusercontent.com/17264765/34901785-04262baa-f7c4-11e7-8a91-11716d6c6d9c.png)
![image](https://user-images.githubusercontent.com/17264765/34901795-1e703ca8-f7c4-11e7-9b35-da1a1a272eae.png)
![image](https://user-images.githubusercontent.com/17264765/34901799-24fe3dc2-f7c4-11e7-84d7-b3e8b4cd4672.png)
![image](https://user-images.githubusercontent.com/17264765/34901802-2b7bfc0c-f7c4-11e7-93d9-5771fd497902.png)

### 4. Generate correlation plots with selected env. variables to identify potential interactions  






