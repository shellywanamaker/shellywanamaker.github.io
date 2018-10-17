---
layout: post
title: Tues. Oct 9, 2018
---

## ASCA analysis with oyster proteomics temperature x time series dataset
* Goal: To determine if proteins drive difference between temperature groups over time  
	- we need to understand the model that ASCA creates from the data so we want to extract the loadings from the temperature factor ASCA and try to understand the behavior of the proteins with high loadings values
		+ PC1 explains 100% of the variation; this seems strange so need to understand what is up with that

	- first I checked that protein column names match up with the rows in the ASCA R function SVD output
	- then I [saved a csv file](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/ACSAr_temp_loadings.csv) with the protein names and PC1 loadings values  
	- [I made two plots of the PC1 loadings values in excel](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/ACSAr_temp_loadings.xlsx) (this could have been done in R):  
		- 1) ordered from highest to zero 
		![](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/data_PC1_positive0.05_selects.png)
		- 2) ordered from lowest to zero  
		![](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/data_PC1_positive0.05_selects.png)
		* the reason for this was to identify proteins that explain the most variation in PC1
		* based on the two plots I made a high and low loadings cut-off:
			+ loadings value >= 0.05 or loadings value <= -0.05
	- then I subsetted the data in R using the cutoffs and [saved a csv file that I could upload into MetaboAnalyst](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/data_PC1_0.05_selects.csv) to visualize what these proteins are doing
	- I uploaded data to metaboanalyst:
		- two factor time series, peak intensity table,samples in rows
		- no data filtering
		- mean-centering 
		- ran ASCA
			-model performance is worse than before and not different from random
			![ASCA model validation for temperature](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/Oct9_metaboA_imgs/data_PC1_0.05_selects_ASCA_modelValidationTemperature.png)  
			![ASCA model validation for time and the interaction of temp and time](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/Oct9_metaboA_imgs/data_PC1_0.05_selects_ASCA_modelValidationTimeAndInteraction.png)
			![ASCA outlier x leaverage plot for temperature](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/Oct9_metaboA_imgs/data_PC1_0.05_selects_ASCAoutlierLevPlot_Temperature.png)
			![ASCA outlier x leaverage plot for time](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/Oct9_metaboA_imgs/data_PC1_0.05_selects_ASCAoutlierLevPlot_Time.png)
			![ASCA outlier x leaverage plot for temperature x time](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/Oct9_metaboA_imgs/data_PC1_0.05_selects_ASCAoutlierLevPlot_Interaction.png)
		- ran heatmap function to get a better idea of the behavior of the protiens
			![heatmap of protein abundance over time in the two temperatures (euclidean distance and ward clustering)](https://github.com/shellytrigg/OysterSeedProject/blob/master/analysis/ASCA/ASCA_shellytest/Oct9_metaboA_imgs/data_PC1_0.05_selects_heatmap_temperature.png)
			+ i'm not sure what to think of the proteins that don't show any abundance except in two samples (ACT.527m15, LOCI100497129, and TXND3.2.4m2). Should these really be included in the analysis?

* conclusions: 
	+ It seems like there are some clusters in the heatmap that are different between temperature treatments, but I don't know what this means if the ASCA model of these proteins is really poor
	+ I'm not sure I really understand the whole ASCA feature selection process so need to read [this paper](https://academic.oup.com/bioinformatics/article/23/14/1792/189939) to understand it better: https://academic.oup.com/bioinformatics/article/23/14/1792/189939



----
****