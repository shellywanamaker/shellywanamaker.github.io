---
layout: post
title: Trying to understand error rate in Skyline and Running Qubit 
date: '2018-03-26'
categories: [bairdi, 2015Oysterseed]
tags: DIA, RNAisolation, Qubit
---

Today I finish the error rate determination in Skyline and hope that I did it right so that I can move on with the DIA analysis. I also run Qubit to quanitify the RNA in my samples I extracted from. 


### DIA error rate

I went through 100 randomly selected peptides to determine Skyline's error rate. 
I got an error rate of 35%, which means that for every 100 peptides, Skyline correctly selected:
- Likely a real peptide
- Peak boundaries ecompass the selected peak well
- Same peak at approximately the same retention time is selected for all repliates

I'm not exactly sure where to start going forward from this, but I'm happy to be done with the error rate portion (as long as I did it correctly)! I emailed Emma with an update on where I'm at.

### RNA Isolation: Qubit Results

I ran two Qubits. First with two samples from my first set of 9 samples, and the second with two samples from my second set of 9 samples.

For both of them, one sample was read, the other was "out of range". Pretty frustrating, and I don't know why this is happeneing.... For the ones I did today, I used 5µL of sample.

In the [first set](http://owl.fish.washington.edu/scaphapoda/grace/Crab-project/QubitData_2018-03-26_13-25-52.csv), I ran samples 77 (Day 9, infected) and 465 (Day 26, infected).
![img](http://owl.fish.washington.edu/scaphapoda/grace/Crab-project/Qubit-first-set.png)

In the [second set](http://owl.fish.washington.edu/scaphapoda/grace/Crab-project/QubitData_2018-03-26_13-36-09.csv), I ran samples 313 (Day 12, infected) and 508 (Day 26, infected). 
![img](http://owl.fish.washington.edu/scaphapoda/grace/Crab-project/Qubit-second-set.png)
