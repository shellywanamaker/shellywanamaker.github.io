DNA methylation in geoduck

Considering interspecies DNA methylation and response to the environment, I started reading Taiji's paper. 

It made me wonder how CG, CHG and CHH methylation in geoduck compare to plants. So I took a look at an [old bismark report](https://gannet.fish.washington.edu/metacarcinus/Pgenerosa/analyses/20181101/bismark_summary_report.html) and found that across all samples:

- 4-7% CHH sites are methylated 
- 3% CHG sites are methylated
- 30% CG sites are methylated


It also made me wonder if geoduck and shellfish have RdDM since this seems to play a role in environmental response. I searched for some in the Geoduck gene gff but didn't come across anything interesting

```
Shellys-MacBook-Pro:20200108_anno Shelly$ grep DRM1 Panopea-generosa-v1.0.a4.gene.gff3
Scaffold_15	GenSAS_5d9637f372b5d-publish	gene	44767336	44780094	.	+	.	ID=PGEN_.00g314470;Name=PGEN_.00g314470;original_ID=21510-PGEN_.00g074210;Alias=21510-PGEN_.00g074210;original_name=21510-PGEN_.00g074210;Notes=sp|Q6P877|ADRM1_XENTR [BLAST protein vs protein (blastp) 2.7.1],sp|Q6NZ09|ADRM1_DANRE [DIAMOND Functional 0.9.22],IPR038633 [InterProScan 5.29-68.0],PF04683.8 [Pfam 1.6]
Scaffold_15	GenSAS_5d9637f372b5d-publish	gene	46998581	47015533	.	-	.	ID=PGEN_.00g315460;Name=PGEN_.00g315460;original_ID=21510-PGEN_.00g075200;Alias=21510-PGEN_.00g075200;original_name=21510-PGEN_.00g075200;Notes=sp|Q6P877|ADRM1_XENTR [BLAST protein vs protein (blastp) 2.7.1],sp|Q6NZ09|ADRM1_DANRE [DIAMOND Functional 0.9.22],IPR032368 [InterProScan 5.29-68.0],PF04683.8 [Pfam 1.6]
Shellys-MacBook-Pro:20200108_anno Shelly$ grep DRD1 Panopea-generosa-v1.0.a4.gene.gff3
Scaffold_01	GenSAS_5d9637f372b5d-publish	gene	23434409	23484204	.	-	.	ID=PGEN_.00g009010;Name=PGEN_.00g009010;original_ID=21510-PGEN_.00g243140;Alias=21510-PGEN_.00g243140;original_name=21510-PGEN_.00g243140;Notes=sp|Q99MV1|TDRD1_MOUSE [BLAST protein vs protein (blastp) 2.7.1],sp|A9CPT4|TDRD1_ORYLA [DIAMOND Functional 0.9.22],PF00567.19 [Pfam 1.6]
Scaffold_03	GenSAS_5d9637f372b5d-publish	gene	7414090	7419610	.	+	.	ID=PGEN_.00g060440;Name=PGEN_.00g060440;original_ID=21510-PGEN_.00g038900;Alias=21510-PGEN_.00g038900;original_name=21510-PGEN_.00g038900;Notes=sp|Q99MV1|TDRD1_MOUSE [BLAST protein vs protein (blastp) 2.7.1],sp|Q99MV7|RNF17_MOUSE [DIAMOND Functional 0.9.22],IPR002999 [InterProScan 5.29-68.0],PF00567.19 [Pfam 1.6]
Scaffold_10	GenSAS_5d9637f372b5d-publish	gene	23306837	23324213	.	-	.	ID=PGEN_.00g212940;Name=PGEN_.00g212940;original_ID=21510-PGEN_.00g320060;Alias=21510-PGEN_.00g320060;original_name=21510-PGEN_.00g320060;Notes=sp|Q9BXT4|TDRD1_HUMAN [BLAST protein vs protein (blastp) 2.7.1],sp|Q9BXT4|TDRD1_HUMAN [DIAMOND Functional 0.9.22],IPR002999 [InterProScan 5.29-68.0],PF00567.19 [Pfam 1.6]
Scaffold_12	GenSAS_5d9637f372b5d-publish	gene	1580090	1637346	.	-	.	ID=PGEN_.00g242970;Name=PGEN_.00g242970;original_ID=21510-PGEN_.00g217530;Alias=21510-PGEN_.00g217530;original_name=21510-PGEN_.00g217530;Notes=sp|Q9BXT4|TDRD1_HUMAN [BLAST protein vs protein (blastp) 2.7.1],sp|Q9BXT4|TDRD1_HUMAN [DIAMOND Functional 0.9.22],PF00076.17 [Pfam 1.6]
Scaffold_13	GenSAS_5d9637f372b5d-publish	gene	18647780	18649072	.	-	.	ID=PGEN_.00g266600;Name=PGEN_.00g266600;original_ID=21510-PGEN_.00g148230;Alias=21510-PGEN_.00g148230;original_name=21510-PGEN_.00g148230;Notes=sp|Q8K4Z4|ADRB2_CAVPO [BLAST protein vs protein (blastp) 2.7.1],sp|P42291|DRD1C_XENLA [DIAMOND Functional 0.9.22],IPR000276 [InterProScan 5.29-68.0],PF00001.16 [Pfam 1.6]
Shellys-MacBook-Pro:20200108_anno Shelly$ grep RDR2 Panopea-generosa-v1.0.a4.gene.gff3
Shellys-MacBook-Pro:20200108_anno Shelly$ grep HEN1 Panopea-generosa-v1.0.a4.gene.gff3
Scaffold_05	GenSAS_5d9637f372b5d-publish	gene	18254038	18254421	.	+	.	ID=PGEN_.00g110960;Name=PGEN_.00g110960;original_ID=21510-PGEN_.00g095980;Alias=21510-PGEN_.00g095980;original_name=21510-PGEN_.00g095980;Notes=sp|Q02575|HEN1_HUMAN [BLAST protein vs protein (blastp) 2.7.1],sp|Q02575|HEN1_HUMAN [DIAMOND Functional 0.9.22],IPR011598 [InterProScan 5.29-68.0],PF08377.5 [Pfam 1.6]
```

## Geoduck DMRs
I need to redo the group stats with either:

- a binomial GLM like Hollie's DMG pipeline
- non-linear mixed model to account for tank and random effects
- 

To do this analysis, I need to get the mC and total C counts data

Are there DMS outside the DMRs?
