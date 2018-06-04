---
layout: post
title: 2015 Oysterseed DIA meeting notes
date: '2018-02-08'
categories: 2015Oysterseed
tags: DIA
---

Notes from a meeting on DIA analysis and the 2015 oysterseed project with Emma, Steven, and Kaitlyn. 


Steven, Kaitlyn, and I met with Emma today to discuss proteomics. I'm doing DIA with 2015 oysterseed data (from the [2015 project](https://github.com/RobertsLab/project-pacific.oyster-larvae/wiki/2015-Oyster-Seed-experiment-23C-vs.-29C)) and Kaitlyn is doing DDA with 2016 oyster data.

[DIA protocol](https://github.com/RobertsLab/resources/blob/master/protocols/DIA-data-Analyses.md)

I learned some crucial things today that have changed the way I understand and how I will continue with this analysis.
- The numbers on the .raw files next to "oysterseed" are the file numbers, NOT the sample numbers
- FOUR samples were run, and four files are associated with each file

Breakdown of oysterseed sample number and the four files associated with them:

| Temp.   |  Date   |   Silo  |     Sample No.    |   File No. from Dec.   |   File No. from Feb. |
|  :---:  |  :---:  |  :---:  |       :---:       | ---------------------- | -------------------- |
| 23C     | 9/11/15 | 9       | Oysterseed 1      | 1, 3, 4                | 5                    |
| 29C     | 9/11/15 | 8       | Oysterseed 2      | 5, 7, 8                | 6                    |
| 23C     | 9/14/15 | 9       | Oysterseed 13     | 9, 11, 12              | 7                    |
| 29C     | 9/14/15 | 8       | Oysterseed 14     | 13, 15, 16             | 8                    |

All are control seeds
Files are from Rhonda's [owl folder](http://owl.fish.washington.edu/phainopepla/C_gigas/2015-12-30/).
Some samples had to be re-done, which is why there are four February files.

 - DIA looks across a range, and within every small window, takes as much data as it can regardless of the relative peptide abundance. Takes everything it can in the time allotted and then moves on. 
  - There are four files per samples because she took the entire range and divided them into smaller chunks so that DIA can deeply go into each of those chunks
  
Emma gave me some suggestions, since I have to do everything over again, to make it a little easier:
- In Skyline, there is a way to combine all four files per sample, so that instead of 16 tabs in skyline, and 16 columns in the exported data, there would be four. Four subfiles within each four files.
- Dig deeper into Skyline so that the spreadsheet isn't so messy when the data is exported
- In the fragment ion column, the precursor is the full peptide, and the fragment ions "y" and "b" ions are created in mass spec when peptides are fragmented. I don't need the "y" or "b" things, just need the precursors. So, I need to look into how to only export the precursor data.
- USE SKYLINE TUTORIALS- there are PDFs and videos. It should help me understand the process, and will help me figure out how to streamline the data. 


### Short-term goal
Re-do the whole Skyline process with all of the .raw files. And figure out a way to combine the four files per four samples, so that in the end I only have four tabs, rather than 16.

### Long-term goal
Make a K-means plot, NMDS, and/or use Venny to determine quickly which are common between 23C and 29C treatments, and which are unique.
