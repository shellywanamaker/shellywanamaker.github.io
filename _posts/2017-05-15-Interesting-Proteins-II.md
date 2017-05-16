---
layout: post
title: Interesting Proteins, part II
---

To determine over/under-expressed proteins eelgrass vs. bare treatments I did the following: 

1) Downloaded the report from Skyline; replaced all "N/A" values with blanks: 

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

9) I an adjacent column I calculated the # sites that had data for each protein, then sorted by that count. I highlighted all overexpressed proteins in green, and underexpressed in red. This allowed me to visually review all proteins, starting with those that were differentially expressed by a factor of 5 in all 4 sites, and assign "Over" / "Under" for each protein.  I assigned proteins that were consistently over- or under-expressed in at least 3 sites; I also spot-checked proteins for which 2 sites were over/under by a factor of 5, and had very consistent/very pronounced diff. expression. I labeled these as "interesting." I copied this list, pasted into a new file that I'll use in Galaxy to join to the annotated transcriptome. 

![image](https://cloud.githubusercontent.com/assets/17264765/26092674/25f81632-39c7-11e7-92f7-08376c57fde0.png)

10) In Galaxy, I uploaded the annotated geoduck gonad transcriptome file (https://raw.githubusercontent.com/sr320/paper-pano-go/master/data-results/Geo-v3-join-uniprot-all0916-condensed.tab) and my protein list: 

![image](https://cloud.githubusercontent.com/assets/17264765/26093073/15a10652-39c9-11e7-8592-bfde6ee01ecb.png)

![image](https://cloud.githubusercontent.com/assets/17264765/26092873/33f431b6-39c8-11e7-876b-4bb5b71855c0.png)

![image](https://cloud.githubusercontent.com/assets/17264765/26093190/ac5c2932-39c9-11e7-90d8-43428b2aaf9c.png)

11) I downloaded the results, added the headers, scanned the proteins, and bolded a few that were significantly differentially expressed:

![image](https://cloud.githubusercontent.com/assets/17264765/26093946/c2508e4c-39cc-11e7-87b0-d214d25f16b7.png)

12) Files are saved on [GitHub](https://github.com/laurahspencer/DNR_Geoduck/tree/master/Analyses/2017-May), and on [Owl](http://owl.fish.washington.edu/generosa/Generosa_DNR/Skyline_May2017/), files dated 5/15. Most important file (at the moment) is: [2017-05-15_Proteins of Definite Interest_Annotated](2017-05-15_Proteins-of-Definite-Interest_Annotated.tabular.xlsx)
