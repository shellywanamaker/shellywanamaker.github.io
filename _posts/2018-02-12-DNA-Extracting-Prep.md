---
layout: post
title: Prepping for DNA Extraction
---

#### Stats on Oly gonads 
Ran some quick stats on the gonad stage and sex data to confirm that my visually determined differences in maturation between **6degC low pH vs. 6degC ambient pH** is, indeed, statistically different.  I performed these analyses in R in my [Histology-Pie-Charts.R script](https://raw.githubusercontent.com/laurahspencer/O.lurida_Stress/master/Analyses/Histology-Pie-Charts.R). 

I created contingency tables to analyze differences in Sex and Stage, then ran chi-squared tests on each. 

#### Contingency Table - Sex  
Chi-squared results:     X-squared = 9.6132, df = 8, p-value = 0.2932 

A warning was printed along with these results... "Warning message: In chisq.test(CT.Sex) : Chi-squared approximation may be incorrect".  So, I ran a Fisher's Exact Test for Count Data as well:  p-value = 0.2942

![Oly-Gonad-Contingency-Table-Sex](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Oly-Gonad-Contingency-Table-Sex.png?raw=true)

#### Contingency Table - Stage 
Chi-squared results:     X-squared = 16.444, df = 4, **p-value = 0.002478**

![Oly-Gonad-Contingency-Table-Stage](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Oly-Gonad-Contingency-Table-Stage.png?raw=true)

#### Stages are significantly different between treatments; take a look at this correlation plot, where blue and red bubbles signify more and fewer gonads at each stage than expected, respetively: 

![Oly-stage-correlation-plot](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Oly-stage-correlation-plot.png?raw=true)

#### Using PAXgene Tissue DNA Kit (see [Kit Handbook](https://github.com/laurahspencer/O.lurida_Stress/blob/master/References/PAXgene-Tissue-DNA-Kit-Handbook.pdf)) on 2017 Oly gonad tissue fixed in paraffin wax. Tissue was fixed using the PAXgene fixative/stabilizer kit.  

Things that I need, in addition to the kit:  
    • Xylene  (we have [Xylene Cyanol FF](https://www.sigmaaldrich.com/catalog/product/sigma/x4126?lang=en&region=US) in the chemical storage).  **NEED XYLENE.**  
    • Homogenizer  **NEED HOMOGENIZOR. _question; do I need to be worried about shearing the DNA? PAXgene advises to "optimize" the homogenization time to not fragment DNA, but that's one of the next steps that I will do in the workflow..._**  
    • Scalpels 
    • Ethanol (96–100%, purity grade p.a.)  
    • Pipets* (10 µl – 1 ml)  
    • Sterile, aerosol-barrier, RNase-free pipet tips  
    • Variable-speed microcentrifuge* capable of attaining 1000–20,000 x g, and  
    equipped with a rotor for 2 ml microcentrifuge tubes  
    • Shaker-incubator* capable of incubating at 56°C, 70°C, and 80°C, and shaking at ≥400 rpm, not exceeding 1400 rpm (e.g., Eppendorf® Thermomixer Compact, or equivalent) 
    • Vortex mixer*  
    • Scalpel  
    • Crushed ice  
    • Optional: RNase A (100 mg/ml; cat. no. 19101)  
    
#### The handbook provides instructions for DNA-only or RNA/DNA extraction combined. Do I want RNA in my samples?:    

_The PAXgene Tissue DNA procedure copurifies DNA and RNA when both are present in the sample. Transcriptionally active tissues such as liver and kidney contain high levels of RNA, which will be copurified. RNA may inhibit some downstream enzymatic reactions, although it does not affect PCR. If RNA-free genomic DNA is required, RNase A should be added to the sample before addition of Buffer TD2, to digest the RNA._

#### Protocol requires [Xylene](https://www.carolina.com/specialty-chemicals-t-z/xylene-laboratory-grade-500-ml/898741.pr), which I will purchase unless I hear differently. (Note: we have Xylene Cyanol FF, but I believe that is for staining purposes, not a solvent).

#### Following Sam and Yaamini's notebooks, I'll need [Qubit™ dsDNA HS Assay Kit](https://www.thermofisher.com/order/catalog/product/Q32851) for quantification; I don't see this in inventory, but are there enough supplies left in the kit for 20 samples? 

#### Same question as 4, for [MethylMiner™ Methylated DNA Enrichment Kit](https://www.thermofisher.com/order/catalog/product/ME10025)

Submitted issue to GitHub with the above questions. Probably won't be able to actually execute lab work tomorrow after all... 


  
