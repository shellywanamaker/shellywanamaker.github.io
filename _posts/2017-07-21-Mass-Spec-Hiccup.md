---
layout: post
title: Mass spec hiccup?
---

_SPOILER ALERT_ The thought is that some of the peptides (in both PRTC and my samples) degrade quickly, and this is what’s causing the loss of signal.  I loaded my samples in batches of 25, so samples sat out up to ~2.5 days prior to being injected.  I’ll need to consider “time out of freezer” as a factor when analyzing my results. This is obvious in the dilution curve data, where PRTC total area shows an obvious decrease over time.

Things appeared to be going very smoothly. 
![07872d9f-a5b3-4a3c-b488-f6c800ea803e](https://user-images.githubusercontent.com/17264765/28847574-9f5586ba-76c4-11e7-8e03-b52d0d3ee4e5.png)

Then, @ 3pm on Friday 7/21 I noticed my QC data beginning to look a bit off starting @ QC38:

![51fedd6d-4ab0-4fdb-9c0f-9c88831a8d57](https://user-images.githubusercontent.com/17264765/28847578-a143dc7e-76c4-11e7-8898-b65acce9b82d.png)
![dea798b5-3c05-4959-a70c-cfb8ff0eeb75](https://user-images.githubusercontent.com/17264765/28847582-a33f81a4-76c4-11e7-90a6-1d3327c7a8f2.png)
![56da5a2f-7251-4e7b-a94e-d67aeacefef1](https://user-images.githubusercontent.com/17264765/28847583-a4958ad0-76c4-11e7-8ba9-ee4e8d76e81d.png)
![2d465c84-3b69-40b5-9ea5-997377e9f4ca](https://user-images.githubusercontent.com/17264765/28847584-a5f54118-76c4-11e7-9c3f-bdb442bd8b5c.png)

Consulted with Yaamini. She suggested checking out the PRTC data in my sample files. I loaded them into the QC Skyline file (PRTCplusBSA), and saw some oddities, particularly a handful of samples that had some completely undetected PRTC peptides.  These samples are: 

![452b1c32-bbc0-4e34-89b2-5056d4573c88](https://user-images.githubusercontent.com/17264765/28847585-a7b32434-76c4-11e7-84a1-3ae427e07c03.png)
![02c9cdfe-3b2f-451b-8ac4-b9597ff3e2a9](https://user-images.githubusercontent.com/17264765/28847589-aa3f09fc-76c4-11e7-89a6-ef72b71839a4.png)

Consulted with Brook. These are her thoughts:
* If the other QC peptides look ok- it may be a factor that your column is retaining some interfering peptides that co-elute or are more dominant in your sample than the QC- and they, as a result, cloud the PRTC signal” 
* You could do a few things- 
    * Run 2 blanks to clean things up again.
    * Then do 3 qc's and see if it all looks ok.
* Or you could re-run one of Yamini's samples and see if it looks the same
    * If Yaminis sample looks different on round 2, then something is up with the column
    * if it is fine, something is up with your samples."

I decided to run 2 blanks, then 3 QC’s like she suggests.

Also, I asked Brook this: 
* Just a thought: Yaamini's samples, the blank, and the QC all were prepared using 3% Acetonitrile + 0.05% Formic Acid by accident, while I prepared my samples with the 0.1% FA called for in the protocol. Is it possible that the change between FA concentration is throwing things for a loop? This just crossed my mind, since I'm about to add ACN+FA to the QC vial and am unsure which one (.1% or .05% FA) to add…  
… and her response: 
* you want 0.1% formic acid- but that shouldn't matter too much- not enough to make signal GONE

I made a new QC vial by adding 30ul to the 10ul QC aliquot I got from Emma’s lab, vortexted, spun it down a second, then transferred it to an autosampler vial and placed it in the tray @ 1:A,4 

A couple more samples ran before I was able to queue up the blanks.  Oddly enough, they look fine. The latest QC does not, though: 

![3203961b-edb1-4e29-8720-5390eb5b5414](https://user-images.githubusercontent.com/17264765/28847592-ac8cb2c2-76c4-11e7-8fb6-7851f2eca0c2.png)
![0f047c75-f8d1-4844-8a46-bd81ef5646ba](https://user-images.githubusercontent.com/17264765/28847600-aea58f66-76c4-11e7-8266-1e27c85ad43b.png)

I’m going to run the 2 blanks, then 2 QC’s. Hopefully they look good. If not, I’ll have to run down to UWPR and put one of Yaamini’s samples in, run that, and see if that looks good or bad. If bad, then something is wrong with the column and Brook will meet me on Saturday morning to change it. If good, then something is wrong with some of my samples.  Although, the samples that don’t look good are no different than the ones that look good that are adjacent- same PRTC, same preparation date & time, same time sitting out of the freezer, and a mix of Round 1 & Round 2 extractions, etc.  So, I can think of no major difference between these samples that would cause such signal issues. 

![772ee314-27a1-4015-847a-87e7195e884d](https://user-images.githubusercontent.com/17264765/28847602-b0a678d4-76c4-11e7-8064-3a813cd65caf.png)
![b0328e3c-5c98-4e50-bc7e-87849a8aa42a](https://user-images.githubusercontent.com/17264765/28847608-b3d2bcc0-76c4-11e7-991b-39d97ceecebc.png)

Here’s “bivalve_199”, which is the first blank in the flush 

![01e9884c-4612-4377-9a04-221290a5e0a4](https://user-images.githubusercontent.com/17264765/28847615-b6bce0b4-76c4-11e7-872d-56045378f8cd.png)


OK, after running 2 blanks here’s the first QC, “QC41”

![cef57c25-d274-4de4-9633-cf8bc69bb896](https://user-images.githubusercontent.com/17264765/28847618-b94cbfb6-76c4-11e7-9bf2-79c976ac3d15.png)




