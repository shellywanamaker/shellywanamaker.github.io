---
layout: post
title: Finished Determining Error Rate for DIA
date: '2018-01-17'
category: 2015Oysterseed
tags: DIA
---

Finished determining error rate for the DIA analysis and sent my results to Emma. Also, include some background info on the 2015 Oysterseed project. 


Today I FINALLY finished error-checking peaks in Skyline.

I sent my error-rates spreadsheet off to Emma. Hopefully it all looks good so that I can move on to the next steps.

Laura sat down with me today and explained everything she understands about Skyline and DIA Analysis process.

Essentially, it started out with taking a pellet from an organisms. In my case, Rhonda had oyster seed. Then, it was broken down into proteins. Using Trypsin, those proteins were further broken down into peptides. Those peptides were put through a tandem Mass-spectrometer. The peptides were put through the first Mass spectrometer, and by some process, they are further broken down into transitions in the second mass spectrometer chamber. The peptides were pushed through with some kind of liquid and the smaller the fragments were, the faster they went through to the second mass spectrometer (i.e., had a low retention time). The larger fragments took longer time. 

In Skyline, the data collected is compared to a known proteome - the Background proteome. This is the same kind of idea as BLASTX. The unknown data was compared to the known background proteome, so that the unknown peptide fragments were assigned identification codes. 

Within Skyline, the data is separated by protein, and a drop-down menu separates the proteins into peptides. The peptides can be visualized and the transitions are demarkated by colored lines. A good signal and abundance of a peptide would look like a peak with multi-colored lines. The x-axis is the retention time, and the y-axis is the abundance of the peptide or transition. 

In error checking, you go through a random set of 100 peptides and go through every tab (tabs are your samples). I had 12 tabs, because I am looking at 12 samples. To error check, you assign a 1 to a peptide and sample if the peak selected by Skyline is aligned. Assign a zero if Skyline picked a random peak that is not correct, or if Skyline selected "noise" as a peak and there is no peak. 

My final Skyline document: http://owl.fish.washington.edu/scaphapoda/grace/2015Cg.sky.zip
My final error-checking spreadsheet with error-rates:http://owl.fish.washington.edu/scaphapoda/grace/2018-01-10_errorchecking.xlsx
