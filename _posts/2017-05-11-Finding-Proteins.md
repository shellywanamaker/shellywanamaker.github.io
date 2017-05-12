---
layout: post
title: Finding proteins of interest 
---

With demultiplexed files in Skyline I can export my results to .csv file for analysis.  While I do still need to create a Retention Time Calculator and apply to data in Skyline, I'm taking an initial stab at finding differentially expressed proteins.  

First step, define the metrics that I want to export: 

![image](https://cloud.githubusercontent.com/assets/17264765/25982620/de216ca0-3692-11e7-9fb1-0391f0c0f7f4.png)

Opening the resulting .csv file in Excel, and it looks like this, with Area & Peptide Peak Found Ratio for each sample in separate columns.  

![image](https://cloud.githubusercontent.com/assets/17264765/25982681/6256f40e-3693-11e7-9f9f-53cdbd6e93f2.png)

For my initial analysis I'm going to use Excel- I'll graduate up to R soon I promise myself!- for the meantime, I used a Pivot Table to pull ** Sum Area by Protein & Sample #**:

![image](https://cloud.githubusercontent.com/assets/17264765/25984090/77feb0e4-369d-11e7-8aeb-a2438b90ae07.png)

I need to normalize the sum area based on the total amount of protein, aka to remove any differences based on the amount of protein we loaded into each sample. We can do this with the Total Ion Current (TIC) for each sample file, which Emma provided for us. Here's a screen shot of [the file](https://github.com/laurahspencer/DNR_Geoduck/blob/master/Data/TIC%20(1).xlsx) she provided: 

![image](https://cloud.githubusercontent.com/assets/17264765/25984208/323f146c-369e-11e7-95bd-6bd5e930c85f.png)

On a new tab in my .xls spreadsheet I transposed the TIC data, then pulled all the Sum Area data from my pivot table into this new tab, normalizing it by dividing by the TIC for each sample: 

![image](https://cloud.githubusercontent.com/assets/17264765/25986264/f3907f84-36a3-11e7-81bc-adcb71e05a35.png)

It looks like an enormous # of peptides peaks were not identified by Skyline (thus all the N/A's). I'm hoping that my RT calculator will improve this. While I don't necessarily want to work with this sparse data, it's good to struggle through Excel so I can realize how much I need to transition to R.... so I did the following: 

Using the normalized data I calculated the average of the two replicates for each treatment/site; if only 1 area value was present, I used the single data point. Then, I calculated fold change with the averages in eelgrass: Eelgrass / Bare. So, ratios in the following spreadsheet represent expression in eelgrass relative to bare: 

![image](https://cloud.githubusercontent.com/assets/17264765/25988072/774050b4-36ab-11e7-9e6d-8925a4c21b1b.png)

And I've highlighted the proteins that were differentially expressed either <0.5 or >2.0:

![image](https://cloud.githubusercontent.com/assets/17264765/25988519/29b28ce8-36ad-11e7-8600-b15a1fc32caf.png)

Pulling them out, I've identified 31 proteins: 

![image](https://cloud.githubusercontent.com/assets/17264765/25988740/03a85644-36ae-11e7-94ef-47d3f1ea8dd6.png)

Now to see what these proteins are!  Using Galaxy I joined the P. generosa gonad annotated transcriptome and my .csv proteins of interest files, and here are the results; those marked with a "0.5" weren't perfect matches (i.e. just same comp#). Interesting to see the "universal stress response" pop up.... 

![image](https://cloud.githubusercontent.com/assets/17264765/25990332/3312d322-36b4-11e7-91a6-b7a52b6a193f.png)

I also found that some of my proteins aren't in the annotated file; those not highlighted in red were not in the annotation file: 

![image](https://cloud.githubusercontent.com/assets/17264765/25990468/b7e55dea-36b4-11e7-8711-b469232ed898.png)

The Excel files associated with this analyses are saved in the following places: in GitHub [Proteins of Interest](https://github.com/laurahspencer/DNR_Geoduck/tree/master/Analyses/2017-May) and on Owl [Exported Skyline Report & Analyses](http://owl.fish.washington.edu/generosa/Generosa_DNR/Skyline_May2017/2015-05-11_Peptide%20Area%20and%20Transition%20Mz.xlsx)


