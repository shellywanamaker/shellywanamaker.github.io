---
layout: post
title: Initial look at Environmental Data
---

## Received environmental data from the 2016 DNR outplant today. Plotted and ran some stats in thie [R Script](https://raw.githubusercontent.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/master/analyses/Environmental/Env-Data-Plots.R)

### First, I plotted using Plotly. Note: I haven't figured out how to embed Plotly plots in my GitHub posts yet, so these are screen shots of the plots. To view, download the .html files and drag them into your brower. 

### [pH Continuous Data](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/raw/master/analyses/Environmental/June2016-Outplant-pH-series.html)
![pH Continuous Plot Screen Shot](https://user-images.githubusercontent.com/17264765/32825989-a3bfec5c-c99b-11e7-8a1d-cf648d1cd4ac.png)

### [pH Box Plot Data](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/raw/master/analyses/Environmental/June2016-Outplant-pH-box.html)
![pH Box Plot screenshot](https://user-images.githubusercontent.com/17264765/32826057-d3af59ca-c99b-11e7-8772-981f0605b3cb.png)


### [DO Continuous Data](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/raw/master/analyses/Environmental/June2016-Outplant-DO-series.html)
![DO Continuous screenshot](https://user-images.githubusercontent.com/17264765/32826291-b1f69be4-c99c-11e7-8584-03079d40feee.png)

### [DO Box Plot Data](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/raw/master/analyses/Environmental/June2016-Outplant-DO-box.html)
![DO Box Plot screenshot](https://user-images.githubusercontent.com/17264765/32826111-ffe5088c-c99b-11e7-9001-a63a3bb7b14e.png)

### [T Continuous Data](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/raw/master/analyses/Environmental/June2016-Outplant-Temp-series.html)
![T Continuous Data screenshot](https://user-images.githubusercontent.com/17264765/32826139-1f2448fc-c99c-11e7-9d4a-862def7ae05b.png)

### [T Box Plot Data](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/raw/master/analyses/Environmental/June2016-Outplant-Temp-box.html)
![T Box Plot screen shot](https://user-images.githubusercontent.com/17264765/32826247-7faa8c0e-c99c-11e7-8b29-daf6d9f6e814.png)


### Then I checked out normality. Temperature data was not normal, so I double-log transformed. NOTE: haven't thrown out any outliers yet; I may after discussing data with Micah. Resulting qqplots & histograms:

![Environmental Data Normality Check](https://github.com/RobertsLab/Paper-DNR-Geoduck-Proteomics/blob/master/analyses/Environmental/Env-Normality.png?raw=true)

### Then, I ran the Bartlett Test of Equal Variance for each environmental variable, by each grouping factor. 

| Treatment | Habitat    | Site      | Region     |            | 
|-----------|------------|-----------|------------|------------| 
| pH-F      | 9177.01824 | 518.84135 | 4287.46341 | 3046.27905 | 
| pH-P      | 0.00000    | 0.00000   | 0.00000    | 0.00000    | 
| DO-F      | 6629.77718 | 114.20095 | 5479.65027 | 4290.31405 | 
| DO-P      | 0.00000    | 0.00000   | 0.00000    | 0.00000    | 
| T-F       | 7745.15337 | 7.18461   | 7666.51686 | 2512.32029 | 
| T-P       | 0.00000    | 0.00735   | 0.00000    | 0.00000    | 


### Finally, I ran 1-Way ANOVA tests for each environmental variable, by each grouping factor: 

| Treatment | Habitat   | Site       | Region    |            | 
|-----------|-----------|------------|-----------|------------| 
| pH-F      | 5756.8843 | 18550.3358 | 4435.2426 | 5178.1590  | 
| pH-P      | 0.0000    | 0.0000     | 0.0000    | 0.0000     | 
| DO-F      | 462.7035  | 172.7403   | 674.5283  | 675.6917   | 
| DO-P      | 0.0000    | 0.0000     | 0.0000    | 0.0000     | 
| T-F       | 3327.6405 | 53.9099    | 7441.9589 | 10106.3882 | 
| T-P       | 0.0000    | 0.0000     | 0.0000    | 0.0000     | 
