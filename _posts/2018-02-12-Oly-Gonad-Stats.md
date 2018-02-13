---
layout: post
title: Oly gonad statistics
---

In a [previous post](https://laurahspencer.github.io/LabNotebook/Oly-Histology-Pie-Charts/) I generate pie charts of the 2017 Oly gonad stage and sex 

Here, I run some quick stats on the gonad stage and sex data to confirm that my visually determined differences in maturation between **6degC low pH vs. 6degC ambient pH** is, indeed, statistically different.  I performed these analyses in R in my [Histology-Pie-Charts.R script](https://raw.githubusercontent.com/laurahspencer/O.lurida_Stress/master/Analyses/Histology-Pie-Charts.R). 

I created contingency tables to analyze differences in Sex and Stage, then ran chi-squared tests on each. 

### Contingency Table - All populations, by Sex  
A warning was printed along with these results... "Warning message: In chisq.test(CT.Sex) : Chi-squared approximation may be incorrect".  So, I ran a Fisher's Exact Test for Count Data instead of a chi-squared test:
![Oly-Gonad-Contingency-Table-Sex](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Oly-Gonad-Contingency-Table-Sex.png?raw=true)

### Contingency Table - All populations, by Stage 
![Oly-Gonad-Contingency-Table-Stage](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Oly-Gonad-Contingency-Table-Stage.png?raw=true)

#### Stages are significantly different between treatments; take a look at this correlation plot, where blue and red bubbles signify more and fewer gonads at each stage than expected, respetively. This indicates that low pH treatment resulted in more early-stage gonad.
![Oly-stage-correlation-plot](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/Oly-stage-correlation-plot.png?raw=true)

## Let's dial down into each poplulation. Bear with me here, there are a ton of contingency tables and stats results. Note I ran Fisher's test for all these due to sample size: 

### Tables, by SEX 
![SN](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/SN-Gonad-Contingency-Table-Sex.png?raw=true) 
![K](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/K-Gonad-Contingency-Table-Sex.png?raw=true)
![HL](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/HL-Gonad-Contingency-Table-Sex.png?raw=true)
![NF](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/NF-Gonad-Contingency-Table-Sex.png?raw=true)

### Tables, by STAGE: 
![SN](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/SN-Gonad-Contingency-Table-Stage.png?raw=true) 
![K](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/K-Gonad-Contingency-Table-Stage.png?raw=true)
![HL](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/HL-Gonad-Contingency-Table-Stage.png?raw=true)
![NF](https://github.com/laurahspencer/O.lurida_Stress/blob/master/Analyses/NF-Gonad-Contingency-Table-Stage.png?raw=true)
