---
layout: post
title: Interesting Proteins, part II
---

To determine over/under-expressed proteins eelgrass vs. bare treatments I did the following:

1) Replaced all "N/A" values with blanks: 

![image](https://cloud.githubusercontent.com/assets/17264765/26090427/c417d0c2-39b9-11e7-9565-ae2dec757777.png)

2) Created a pivot table to sum the total peak area for each protein, broken down by sample #. 

![image](https://cloud.githubusercontent.com/assets/17264765/26090431/d6147fc8-39b9-11e7-86ff-587649959a40.png)

3) I copied the pivot table results and pasted into a new tab; I did this b/c oddly referencing the pivot table in a subsequent formula was not working. Entered the Total Ion Current (TIC) values into 

![image](https://cloud.githubusercontent.com/assets/17264765/26090447/ef2f9e0c-39b9-11e7-9703-c9ba092f9343.png)

4) On a new tab, I assigned each sample # its corresponding site & treatment, then normalized the protein sum peak area by the TIC: **%TIC = [peak area / TIC]*100**  I highlighted cells with %TIC between 20%-99% in green, and those >100% in red. I'll need to investigate why I have some proteins with a peak area than the TIC. 

![image](https://cloud.githubusercontent.com/assets/17264765/26090752/c1882daa-39bb-11e7-9d15-abb3aebeafcc.png)

5) On a new tab, I averaged technical replicates' %TIC (i.e. same sample was run twice on Lumos), then calculated the fold change in eelgrass beds compared to bare beds, by SITE. For example: **%TIC @ Case Inlet = Average %TIC CI-Eelgrass / %TIC CI-Bare**

![image](https://cloud.githubusercontent.com/assets/17264765/26090778/edc5686a-39bb-11e7-95a1-992e32bb0fda.png)

6) On a new tab, created another pivot table showing fold change for each protein in eelgrass beds compared to bare, organized by site. **I highlighted proteins over-expressed by 5x in green, and under-expressed by 5x in red.**

![image](https://cloud.githubusercontent.com/assets/17264765/26090866/72e1cffc-39bc-11e7-8ece-834e2734d684.png)

7) Then, I did some more re-organization and extracted a list of proteins in each site that were over/under expressed 5x:

![image](https://cloud.githubusercontent.com/assets/17264765/26091021/57cd7cf6-39bd-11e7-8277-147aad2c4768.png)

8) I moved this list to a new (much smaller) file. Next task: identify which proteins are **consistently** expressed differently in the two treatments.  I re-structured the list of proteins & associated fold change into 1 column, and assigned each data point a site. Then, I created yet _another_ pivot table to organize these candidate "interesting" proteins by site; As shown in this screen shot, in total there are 2382 proteins that were over/under expressed by a factor of 5 in at least one site: 866 in Case Inlet, 1153 in Fidalgo Bay, 910 in Port Gamble, and 666 in Skokomish. 

![image](https://cloud.githubusercontent.com/assets/17264765/26091245/e4f00b52-39be-11e7-9684-32b61e7c6d3e.png)

TBD ...
