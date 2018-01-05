---
layout: post
title: DO Data from WA Ecology & DO Outlier Scrub re-do
---

## In an effort to QC the dissolved oxygen data from the DNR geoduck outplant, I checked out WA Ecology's online tool, the [Environmental Information Management (EIM) System](https://fortress.wa.gov/ecy/eimreporting/Default.aspx).  

### Here's the website layout. I opted to search under the **Results** field
![ecology-do-data1](https://user-images.githubusercontent.com/17264765/34546198-21cdd686-f0a7-11e7-8057-7c0e93a2f996.PNG)

### After experimenting a bit with search options, I searched for "dissolved oxygen":
![ecology-do-data2](https://user-images.githubusercontent.com/17264765/34546199-21e09e88-f0a7-11e7-92b8-024c3ff44f2b.PNG)

### Here is a shot of the results table. I then downloaded all results. 

![ecology-do-data3](https://user-images.githubusercontent.com/17264765/34546194-2169a012-f0a7-11e7-826e-4eac2f552902.PNG)

### The downloaded results file was a .csv. I opened in Excel and generated 2 histograms: 1) All DO data points measured in mg/L; 2) All DO data points measured in mg/L AND measurements from marine/salt/brackish water. 

![ecology-do-data4](https://user-images.githubusercontent.com/17264765/34546195-2180015e-f0a7-11e7-8a04-74a103a5e8bc.PNG)

![ecology-do-data5](https://user-images.githubusercontent.com/17264765/34546196-21b6be9c-f0a7-11e7-943f-bb7538d0cd93.PNG)

### Main take-away: All DO data ranged from 0-21 mg/L, therefore the data points in the DNR dataset >21 should not be included in my data analysis.

---

## Re-running outlier scrub on environmental data

### Based on [Yaamini's information](https://yaaminiv.github.io/Remaining-Analyses-Part14/) that after scrubbing for outliers she does not have DO values as high as I do (highest is in the 20's mg/L), I decided to check out her method of scrubbing outliers.  She used the Tukey inner-fence method, which removes any values greater than 1.5 times the inner-quartile range (IQR). The IQR is the distance between the lower (Q1, 25%) and upper (Q3, 75%) quartiles: 
  * IQR = Q3 - Q1  
  * Upper bound = Q1 - 1.5 * IQR  
  * Lower bound = Q3 + 1.5 * IQR  

I reviewed the outlier removal script that I had used previously, and it actually uses the same method. Regardless, I re-wrote my script with help from [Yaamini's script](https://github.com/RobertsLab/project-oyster-oa/blob/master/analyses/DNR_SRM_20170902/2017-11-15-Environmental-Data-and-Biomarker-Analyses/2017-12-13-Environmental-Data-Quality-Control/2017-12-13-Environmental-Data-Quality-Control.R), scrubbed for outliers, then plotted the results and compared my pre- and post- quartile ranges. It turns out that the reason I have higher DO values than Yaamini is that I am using data from all sites, including eelgrass patches, and Yaamini is only using bare sites.  The Fidalgo Bay-Eelgrass site had much larger variation, with values as high as ~40 mg/L. In speaking with Graham Young and Chris Monson, they have never seen values that exceed ~13mg/l. I'm just not sure I can trust the DO data from FB at this point, and will need to consult furthere with Micah to see if we can identify an explanation. For example, is it possible that the FB DO data is in a different unit? 

Pre-outlier scrub environmental data time series plotsL
  * [Dissolved Oxygen](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-DO-series.html)
  * [pH](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-pH-series.html)
  * [Salinity](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-Salinity-series.html)
  * [Temperature](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-Temp-series.html) 
  * [Tide](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-Tide-series.html) 
Post-outlier scrub environmental data time series plots: 
  * [Dissolved Oxygen](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-DO-series-noOutliers.html)
  * [pH](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-pH-series-noOutliers.html)
  * [Salinity](http://owl.fish.washington.edu/generosa/Generosa_DNR/June2016-Outplant-Salinity-series-noOutliers.html)
  * _Temperature and tidal data not adjusted_


