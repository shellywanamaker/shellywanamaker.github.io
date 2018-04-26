---
layout: post
title: April 25, 2018, Data Organization
date: '2018-04-25'
category: bairdi
tags: DataOrganization
---

### Index - Match

Today Pam showed me again how to do Index Match in Excel. She originally showed me on her PC, and my format on a Mac is a little different, but not much. Here's what you do on a Mac:

Have the two files open that you want to move and match data. 
In the file and cell that you want data MOVED TO, this is the formula:

**=INDEX('[Qubit-consolidated-copy.xlsx]Sheet1'!$E:$E,MATCH($F:$F,'[Qubit-consolidated-copy.xlsx]Sheet1'!$P:$P,0))**

=INDEX('[Qubit-consolidated-copy.xlsx]Sheet1'!$E:$E --> the information from the spreadsheet you want to transfer

MATCH($F:$F, --> the info in the current sheet you want to match with info in the other sheet (I did tube numbers)

'[Qubit-consolidated-copy.xlsx]Sheet1'!$P:$P,0)) --> the info from the other sheet that contains the things you want to match with the current sheet (tube numbers)


So what this all did for me, was get the Qubit RNA concentration data from the Qubit datasheet, into my RNA Isolation spreadsheet and matched the Qubit RNA concentration data to the correct sample via the matching tube numbers. 

### Qubit note:

I did sample 469 on the Qubit TWICE, instead of doing 496... so I will Qubit 496 real quick, and then have all of my samples in the subset with Qubit results.

Then, I will organize the spreadsheet and then pick new samples to replace the ones that have Qubit results of "0" (Out of range). 

### Replacement samples for RNA isolation (10 crabs; 30 samples; 4 batches)
Pam will be able to watch how it's done tomorrow.    

These were chosen to replace the samples that had an "Out of range" ("0") Qubit reading. Because the crabs have three samples each, I had to pick three new samples for each sample that read "Out of range". 
![img](http://owl.fish.washington.edu/scaphapoda/grace/Crab-project/replacement-samples-for-rna-iso.png)
