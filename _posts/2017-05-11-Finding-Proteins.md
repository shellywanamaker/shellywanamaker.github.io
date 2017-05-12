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

On a new tab in my .xls spreadsheet I transposed the TIC data, then pulled all the Sum Area data from my pivot table into this new tab, normalizing it by dividing by the TIC for each sample. 

It looks like an enormous # of peptides peaks were not identified by Skyline. I'm hoping that my RT calculator will improve this... 
