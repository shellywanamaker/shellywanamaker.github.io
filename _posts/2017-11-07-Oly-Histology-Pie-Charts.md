---
layout: post
title: Olympia oyster gonad stage pie charts
---

Gonad histology samples were collected twice last winter during the Oly experiment: after the temperature treatment, and after the OA treatment.  Samples were sent to Diagnostic Pathology Medical Group for paraffin embedding and slides.  Grace & Katie Davidson (from Walla Walla) imaged the slides, and Katie assigned gonad maturation stage & sex.  

#### Histology slide images:  
  * Post-Temperature Treatment [on Owl](http://owl.fish.washington.edu/scaphapoda/grace/Histology-images/Oly_gonadhisto_preOA_2017/); [on GitHub](https://github.com/laurahspencer/O.lurida_Stress/tree/master/Images/2017-February_Histo-slides-Images)
  * Post-OA Treatment [on Drive](https://drive.google.com/open?id=0B6vcfZRVqdYHUVQ0ZmZ3VTlpYkU); [on GitHub](https://github.com/laurahspencer/O.lurida_Stress/tree/master/Images/2017-April_Histo-slides-Images)

#### Katie's stage/sex data:
  * On [Owl](http://owl.fish.washington.edu/scaphapoda/katie/Labeled%20Histology%20Slide%20Tissues/)
  * She documented her work in an online [lab notebook](https://genefish.wordpress.com/author/katiedavidson5/). 

#### Codes used for the gonad status assignment: 
  * Sex:  **M** = Male, **F** = Female, **HBS** = Hermaphrodite (equal), **HPM** = Hermaphrodite (predominately male), **HPF** = Hermaphrodite (predominately female)
  * Stage:  **1** = Early, **2** = Advanced, **3** = Ripe

#### My analysis using Katie's stage data 
I created a .csv data file [2017-Oly-Histo-Results.csv](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Data/2017-Oly-Histo-Results.csv) and an [R script](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Histology-Pie-Charts.R) to generate pie charts of gonad maturation stages. These charts include all sexes.  Some observations from the All Populations data: 
  * Gonads were already semi-ripe after temperature treatment
  * Fewer Stage 3 (very ripe) gonads in 6 degC group 
  * Fewer Stage 3 gonads after the Low pH treatment in the 6degC Group - they either resorbed or spawned)

![Gonad-Stage-Pie-Charts](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Gonad-Stage-Pie-Charts.png?raw=true!)
---
---
![Gonad-Stage-Pie-Charts-SN](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Gonad-Stage-Pie-Charts-SN.png?raw=true)
---
---
![Gonad-Stage-Pie-Charts-K](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Gonad-Stage-Pie-Charts-K.png?raw=true)
---
---
![Gonad-Stage-Pie-Charts-NF](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Gonad-Stage-Pie-Charts-NF.png?raw=true)
---
---
![Gonad-Stage-Pie-Charts-HL](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Gonad-Stage-Pie-Charts-HL.png?raw=true)
