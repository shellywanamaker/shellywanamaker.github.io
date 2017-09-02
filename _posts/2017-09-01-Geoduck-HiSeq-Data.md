While we received a lot of files in HiSeq folder, none were fastqc, thus Sam downloaded from BaseSpace. And it is ugly.

<img src="http://eagle.fish.washington.edu/cnidarian/skitch/Geoduck_HiSeq_1F5A1426.png" alt="Geoduck_HiSeq_1F5A1426.png"/>

```
D-172-25-149-231:Ironman-35682656 sr320$ ls
Geoduck1_1-43499537	Geoduck3_1-43493557	Geoduck5_1-43498555	Geoduck7_1-43493558
Geoduck1_2-43501508	Geoduck3_2-43497583	Geoduck5_2-43486134	Geoduck7_2-43498556
Geoduck1_3-43495567	Geoduck3_3-43489715	Geoduck5_3-43497581	Geoduck7_3-43499536
Geoduck1_4-43483166	Geoduck3_4-43499538	Geoduck5_4-43498557	Geoduck7_4-43494561
Geoduck1_5-43489716	Geoduck3_5-43500515	Geoduck5_5-43501509	Geoduck7_5-43498560
Geoduck1_6-43484188	Geoduck3_6-43492568	Geoduck5_6-43495570	Geoduck7_6-43484189
Geoduck1_7-43492569	Geoduck3_7-43496563	Geoduck5_7-43484190	Geoduck7_7-43496564
Geoduck1_8-43490641	Geoduck3_8-43484191	Geoduck5_8-43484192	Geoduck7_8-43484193
Geoduck2_1-43497582	Geoduck4_1-43495568	Geoduck6_1-43494560	Geoduck8_1-43492567
Geoduck2_2-43491623	Geoduck4_2-43484187	Geoduck6_2-43491624	Geoduck8_2-43496562
Geoduck2_3-43492566	Geoduck4_3-43498554	Geoduck6_3-43496561	Geoduck8_3-43502518
Geoduck2_4-43486135	Geoduck4_4-43485200	Geoduck6_4-43498558	Geoduck8_4-43490640
Geoduck2_5-43486136	Geoduck4_5-43498559	Geoduck6_5-43495569	Geoduck8_5-43497584
Geoduck2_6-43494562	Geoduck4_6-43500516	Geoduck6_6-43502519	Geoduck8_6-43491625
Geoduck2_7-43500517	Geoduck4_7-43485201	Geoduck6_7-43489717	Geoduck8_7-43500518
Geoduck2_8-43485202	Geoduck4_8-43497585	Geoduck6_8-43500519	Geoduck8_8-43483167
D-172-25-149-231:Ironman-35682656 sr320$ pwd
/Volumes/web-1/nightingales/Geoduck_HiSeq/170228_ST-K00104_0381_AHHHWNBBXX/Data/Ironman-35682656
```
Here are half of the HiSeq Files, the RNA ones.


```
Geoduck-ctenidia-RNA-1_S3_L001_R1_001.fastq.gz
Geoduck-ctenidia-RNA-1_S3_L001_R2_001.fastq.gz
Geoduck-ctenidia-RNA-2_S11_L002_R1_001.fastq.gz
Geoduck-ctenidia-RNA-2_S11_L002_R2_001.fastq.gz
Geoduck-ctenidia-RNA-3_S19_L003_R1_001.fastq.gz
Geoduck-ctenidia-RNA-3_S19_L003_R2_001.fastq.gz
Geoduck-ctenidia-RNA-4_S27_L004_R1_001.fastq.gz
Geoduck-ctenidia-RNA-4_S27_L004_R2_001.fastq.gz
Geoduck-ctenidia-RNA-5_S35_L005_R1_001.fastq.gz
Geoduck-ctenidia-RNA-5_S35_L005_R2_001.fastq.gz
Geoduck-ctenidia-RNA-6_S43_L006_R1_001.fastq.gz
Geoduck-ctenidia-RNA-6_S43_L006_R2_001.fastq.gz
Geoduck-ctenidia-RNA-7_S51_L007_R1_001.fastq.gz
Geoduck-ctenidia-RNA-7_S51_L007_R2_001.fastq.gz
Geoduck-ctenidia-RNA-8_S59_L008_R1_001.fastq.gz
Geoduck-ctenidia-RNA-8_S59_L008_R2_001.fastq.gz
Geoduck-gonad-RNA-1_S1_L001_R1_001.fastq.gz
Geoduck-gonad-RNA-1_S1_L001_R2_001.fastq.gz
Geoduck-gonad-RNA-2_S9_L002_R1_001.fastq.gz
Geoduck-gonad-RNA-2_S9_L002_R2_001.fastq.gz
Geoduck-gonad-RNA-3_S17_L003_R1_001.fastq.gz
Geoduck-gonad-RNA-3_S17_L003_R2_001.fastq.gz
Geoduck-gonad-RNA-4_S25_L004_R1_001.fastq.gz
Geoduck-gonad-RNA-4_S25_L004_R2_001.fastq.gz
Geoduck-gonad-RNA-5_S33_L005_R1_001.fastq.gz
Geoduck-gonad-RNA-5_S33_L005_R2_001.fastq.gz
Geoduck-gonad-RNA-6_S41_L006_R1_001.fastq.gz
Geoduck-gonad-RNA-6_S41_L006_R2_001.fastq.gz
Geoduck-gonad-RNA-7_S49_L007_R1_001.fastq.gz
Geoduck-gonad-RNA-7_S49_L007_R2_001.fastq.gz
Geoduck-gonad-RNA-8_S57_L008_R1_001.fastq.gz
Geoduck-gonad-RNA-8_S57_L008_R2_001.fastq.gz
Geoduck-heart-RNA-1_S2_L001_R1_001.fastq.gz
Geoduck-heart-RNA-1_S2_L001_R2_001.fastq.gz
Geoduck-heart-RNA-2_S10_L002_R1_001.fastq.gz
Geoduck-heart-RNA-2_S10_L002_R2_001.fastq.gz
Geoduck-heart-RNA-3_S18_L003_R1_001.fastq.gz
Geoduck-heart-RNA-3_S18_L003_R2_001.fastq.gz
Geoduck-heart-RNA-4_S26_L004_R1_001.fastq.gz
Geoduck-heart-RNA-4_S26_L004_R2_001.fastq.gz
Geoduck-heart-RNA-5_S34_L005_R1_001.fastq.gz
Geoduck-heart-RNA-5_S34_L005_R2_001.fastq.gz
Geoduck-heart-RNA-6_S42_L006_R1_001.fastq.gz
Geoduck-heart-RNA-6_S42_L006_R2_001.fastq.gz
Geoduck-heart-RNA-7_S50_L007_R1_001.fastq.gz
Geoduck-heart-RNA-7_S50_L007_R2_001.fastq.gz
Geoduck-heart-RNA-8_S58_L008_R1_001.fastq.gz
Geoduck-heart-RNA-8_S58_L008_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-1_S6_L001_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-1_S6_L001_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-2_S14_L002_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-2_S14_L002_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-3_S22_L003_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-3_S22_L003_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-4_S30_L004_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-4_S30_L004_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-5_S38_L005_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-5_S38_L005_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-6_S46_L006_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-6_S46_L006_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-7_S54_L007_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-7_S54_L007_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-8_S62_L008_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-123-8_S62_L008_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-1_S7_L001_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-1_S7_L001_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-2_S15_L002_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-2_S15_L002_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-3_S23_L003_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-3_S23_L003_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-4_S31_L004_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-4_S31_L004_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-5_S39_L005_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-5_S39_L005_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-6_S47_L006_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-6_S47_L006_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-7_S55_L007_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-7_S55_L007_R2_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-8_S63_L008_R1_001.fastq.gz
Geoduck-juvenile-ambient-exposure-RNA-EPI-124-8_S63_L008_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-1_S4_L001_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-1_S4_L001_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-2_S12_L002_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-2_S12_L002_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-3_S20_L003_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-3_S20_L003_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-4_S28_L004_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-4_S28_L004_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-5_S36_L005_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-5_S36_L005_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-6_S44_L006_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-6_S44_L006_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-7_S52_L007_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-7_S52_L007_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-8_S60_L008_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-115-8_S60_L008_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-1_S5_L001_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-1_S5_L001_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-2_S13_L002_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-2_S13_L002_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-3_S21_L003_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-3_S21_L003_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-4_S29_L004_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-4_S29_L004_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-5_S37_L005_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-5_S37_L005_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-6_S45_L006_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-6_S45_L006_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-7_S53_L007_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-7_S53_L007_R2_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-8_S61_L008_R1_001.fastq.gz
Geoduck-juvenile-OA-exposure-RNA-EPI-116-8_S61_L008_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-1_S8_L001_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-1_S8_L001_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-2_S16_L002_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-2_S16_L002_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-3_S24_L003_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-3_S24_L003_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-4_S32_L004_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-4_S32_L004_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-5_S40_L005_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-5_S40_L005_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-6_S48_L006_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-6_S48_L006_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-7_S56_L007_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-7_S56_L007_R2_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-8_S64_L008_R1_001.fastq.gz
Geoduck-larvae-day5-RNA-EPI-99-8_S64_L008_R2_001.fastq.gz
```



