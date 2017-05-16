---
layout: post
title: An alternative look at proteins
---

Following up on my [Proteins of Interest, Part II](https://laurahspencer.github.io/LabNotebook/Interesting-Proteins-II/) analysis, I am taking a second, simpler look at the peak area data. This time, I am simply taking the total peak area for each protein and averaging across each treatment: 

![image](https://cloud.githubusercontent.com/assets/17264765/26127988/e93bfbcc-3a3f-11e7-88ff-395948ca1110.png)

Then, using Galaxy, join the proteins that are up/down regulated by 5x with the annotations: 

![image](https://cloud.githubusercontent.com/assets/17264765/26128090/26aca8d0-3a40-11e7-8faf-c718a416c149.png)

Added column names:

![image](https://cloud.githubusercontent.com/assets/17264765/26129154/fbe61146-3a43-11e7-907e-73fc6ab11bfb.png)

![image](https://cloud.githubusercontent.com/assets/17264765/26129164/083f2b3a-3a44-11e7-8a24-cf1adc22e86f.png)

And counted the number of proteins in this list, which is 76. This file is found in the [DNR_Geoduck repo](https://github.com/laurahspencer/DNR_Geoduck/blob/master/Analyses/2017-May/2017-05-16_Proteins-of-Interest_Treatment-Fold-Change_Annotated.tabular.xlsx)

Then, using Galaxy I joined my two datasets to identify which proteins were found to be diff. expressed in both the treatment/site analysis and the treatment-only analysis.  Using Revigo I did a quick visualization:

**Expressed more in Bare patches:**

![image](https://cloud.githubusercontent.com/assets/17264765/26132459/427c8ad4-3a55-11e7-9315-567065fa298e.png)
![image](https://cloud.githubusercontent.com/assets/17264765/26132475/71589c08-3a55-11e7-88e2-86851176ee34.png)
![image](https://cloud.githubusercontent.com/assets/17264765/26132559/ff9f9b56-3a55-11e7-8371-42974b513113.png)

**Expressed more in Eelgrass patches:**

![image](https://cloud.githubusercontent.com/assets/17264765/26132622/7534238c-3a56-11e7-9b7e-c90cff98cb91.png)
![image](https://cloud.githubusercontent.com/assets/17264765/26132639/8c27b266-3a56-11e7-8f8b-58419eb5161c.png)
![image](https://cloud.githubusercontent.com/assets/17264765/26132735/0a23b610-3a57-11e7-95d0-852cedc6ee12.png)

