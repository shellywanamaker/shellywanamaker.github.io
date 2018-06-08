---
layout: post
title: Re-visiting error rate in Skyline and figuring out the math in pooling samples for sequencing
date: '2018-06-08'
categories: [bairdi, 2015Oysterseed]
tags: DIA, Crabproject
---
Today I re-did the Skyline peak-picking error rate for the 2015 Oysterseed DIA and sent off the results to Emma for feedback. I also worked on figuring out how to make the 12 pooled samples that will be sent off for sequencing. Awaiting Steven's feedback on that.

### 2015 Oysterseed 
I made my own repo for the [2015 Oysterseed](https://github.com/grace-ac/DIA-2015-oysterseed) project. 

Here is a link to my error rate that I did today: [here](https://github.com/grace-ac/DIA-2015-oysterseed/blob/master/data/20180608-skyline-dia-error-rates.xlsx)

Emma responded and said that my error rate (almost 50%) looks pretty bad. I agree. So I'm going to go through again and check all my settings. Hopefully this gets sorted out quickly so that I can FINALLY continue with this process. 

### Pooling samples: math thoughts
[GitHub issue](https://github.com/RobertsLab/resources/issues/285)      
Here's what I think I'm going to do:     
The pools are the yellow boxes. In the boxes, the values are the amount of ul that I should remove from that sample to get 10ng of RNA. I would then add those uls to a new tube, which will become the pooled sample (4 samples per pooled sample). Then, because the CORE wants a sample that is 50ul, I would add enough ul of 0.1% DEPC-treated H20 such that the final volume of the pooled sample is 50ul. 

Here's a screenshot of the amount of ul per sample that contains 10ng of RNA:

![img](https://github.com/grace-ac/grace-ac.github.io/blob/master/notebook-images/20180608-to-get-10ng.png)

Waiting for Steven's feedback on that and then the instructions for next steps. 

