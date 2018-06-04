---
layout: post
title: Determining error rate for DIA 2015 Oysterseed
date: '2018-01-16'
category: 2015Oysterseed
tags: DIA
---

Update on error rate peak picking - confusion as to how to categorize correct and incorrect picks by Skyline. Includes tips from Laura. 


I moved computers from Swan to Woodpecker. In order to be able to continue a project on a different computer, you need to File > Share > Complete. It becomes a .zip file. Upload to OWL. Open zip on new computer, and all the libraries and everything is included.

I continued spot-checking the peaks. 
Skyline file (.zip): http://owl.fish.washington.edu/scaphapoda/grace/2015Cg.sky.zip
Xcel error-checking spreadsheet: http://owl.fish.washington.edu/scaphapoda/grace/2018-01-10_errorchecking.xlsx

However, after going through roughly 50 today, I am having a hard time thinking about whether I'm error-checking correctly. Currently, I am going through peptides randomly - with an end goal of 100 peptides checked. I am assigning a "1" to peptide peaks that were correctly chosen by Skyline. A "0" to ones where the wrong peak was selected. 

Laura says she views this process as having four categories:
- There is a peak and Skyline chose the correct peak "1"
- There is a peak and Skylinie chose the wrong peak "0"
- There is not a peak and Skyline chose noise as a peak "0"
- There is not a peak and Skyline did not select anything "1"

The two "1" options are correct because Skyline did the right thing. I am wondering if there should be a way to distinguish between the two options - use letters? I may be making this all too complicated. Getting thoughts out now and will update notebook post according to what I end up doing. 

Here is an example of there being a peak, and Skyline making the correct selection:
http://owl.fish.washington.edu/scaphapoda/grace/CaptureG.PNG

Here is an example of there being peaks, and Skyline picking the wrong one...? Or is this considered all noise and Skyline just tried to pick something....? 
http://owl.fish.washington.edu/scaphapoda/grace/CaptureG2.PNG

Here is an example of noise:
http://owl.fish.washington.edu/scaphapoda/grace/CaptureG3.PNG
