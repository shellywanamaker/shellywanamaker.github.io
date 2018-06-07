---
layout: post
title: Re-do DIA, thinking about error rate determination
date: '2018-03-14'
categories: 2015Oysterseed
tags: DIA
---
I re-do the DIA analysis from step one. I'm still unsure how to do error rate determination. The protocol is not clear on how to do this.

I re-did the DIA analysis from the beginning. This time I only used settings used by Emma in her Skyline document that she sent me. 

I think I must have done something better this time around, because a lot of the chromatograms are looking much better. Now I will do the error rate calculation and finally get into the data analysis after that. 

![img](http://owl.fish.washington.edu/scaphapoda/grace/2015-oysterseed-project/CaptureDIA.PNG)


## Error rate assessment

Skyline doesn't always do the best job of identifying peaks (where transitions align, meaning that the peptide is real and can be identified). So, error rate has to be calculated.

In order to do this, I will look at ~100 randomly selected peptides and give them a rating of "1" or "0".

A rating of "1" will only be applied if the following three conditions are met:
- The peak selected is likely a real peptide (either has an ID and/or the transitions align well)
- The peak boundaries encompass the peak well
- The same peak is at about the same retention time and is selected across all replicates (in my case, the four replicates)

A rating of "0" will be given if not all three conditions are met.

I'm not sure if I should figure out a way to identify which condition wasn't met. 
