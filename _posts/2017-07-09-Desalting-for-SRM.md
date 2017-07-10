---
layout: post
title: Geoduck SRM, desalting
---
### DNR Geoduck Ctenidia Sample prep for SRM  

#### FLASHBACK!!! 

Yaamini, Grace, and Jose prepped my geoduck samples from sonication though digestion. Due to the large number of samples (I have 48), they split this into two cohorts; Yaamini refers to these as "Round 2" and "Round 3" (since our DIA samples were Round 1).  Here are their notebook entries:

Round 2:
  - Final list of samples extracted:

    ![image](https://user-images.githubusercontent.com/17264765/28007970-6661b16a-650a-11e7-822f-2866fcbe9c3b.png)
  - [Sample prep for sonication- Yaamini's notes](https://yaaminiv.github.io/DNR-Sample-Preparation-Round2/]
  - [Sample prep for sonicatoin- Grace notes](https://genefish.wordpress.com/2017/05/23/graces-notebook-preparing-samples-for-laura/).
  - [Sonication - Yaamini's notes](https://yaaminiv.github.io/DNR-Sonication-Round2/)
  - [BCA Assay - Yaamini's notes](https://yaaminiv.github.io/DNR-BCA-Assay-Round2/)
  - [Digestion - Yaamini's notes](https://yaaminiv.github.io/DNR-Mini-Trypsin-Digestion-Round2/)
  - A couple notes: My initial list of samples was dramatically modified due to a couple preparation hiccups (not rinsing tools with nanopure after bleach when cutting, using the wrong chemical in a solution).
    
Round 3
  - Final list of samples extracted:
    ![image](https://user-images.githubusercontent.com/17264765/28007986-7795086a-650a-11e7-82c3-89be0f2f6f52.png)
  - [Sample prep & sonication sonication- Yaamini's notes](https://yaaminiv.github.io/DNR-Sample-Preparation-and-Sonication-Round3/)
  - [Sample prep for sonicatoin- Grace notes](https://genefish.wordpress.com/2017/05/30/graces-notebook-may-30-2017/).
  - [BCA Assay- Yaamini's notes](https://yaaminiv.github.io/DNR-BCA-Assay-Round3/)
  - [Digestion - Yaamini's notes](https://yaaminiv.github.io/DNR-Mini-Trypsin-Digestion-Round3/)

#### On 7/4 I speed vacuumed my samples. Again, this took awhile.
  * Make: CentriVap (R) Refrigerated Centrifugal Concentrators
  * Model: 7310021
  * Program Number: 4 (although this was modified; don't rely on the Program #)
  * Temperature: 4ºC
  * Time: 999 (initially I set this to ON, but later I set it to 999 (mins) to ensure it wouldn't shut off!)
  
Loaded samples on @ ~10am, monitored for ~1.5 hrs, then left to work in my office. I returned at 3:30pm and found that it had fully stopped, and the temperature and increased to room temp, with no obvious reasons as to why it stopped.  Judging from the amount the samples had evaporated, I'd guess it had stopped at around 1:30 or 2pm.  I chatted with Jen and she advised that I clean the large O-ring to ensure a proper seal. I did so, restarted with time set to 999. Checked on it at 7:30pm, and samples still needed lots of time. I returned at 11:30pm, and pulled all my samples out at 1:20am.  Many of them had a black precipitate, which is different than our first round of extractions:
  

#### 7/9 Desalting all samples, which Involved preparing columns, and washing a series of solvents through the columns to remove salts and retain the peptides. Followed the [protocol](https://github.com/sr320/LabDocs/blob/master/protocols/ProteinprepforMSMS.md) listed on LabDocs repo, with a couple minor tweaks:

##### Step 1: Made solvents
  ![image](https://user-images.githubusercontent.com/17264765/28006702-513f989c-6505-11e7-9a4f-3b5f83d8b079.png)

##### Step 2: Labeled tubes 50 each (48 samples, Gblank, and Oblank):
    - Macrospin tubes for columns: G# E
    - Macrospin tubes for columns: G# F (final, will contain peptides)
    - Centrifuge tubes: G# E-1
    - Centrifuge tubes: G# E-2 **Note: this tube was extraneous, and was not used, as the macrospin column "G# E" had a snap top, and was used instead. This saved a pipetting step. 
    
![file_000](https://user-images.githubusercontent.com/17264765/28006965-70c1f268-6506-11e7-973b-e1d78cca19c3.jpeg)
    
##### Step 3:  Reconstituted samples in **100 µl solvent B**. Need sample solution =< pH2. If too basic, added 20 µl increments of 10% formic acid and tested by applying 2ul sample to pH test strip); I randomly pulled 12 samples, tested 1 w/o adding any formic acid, then progressively added 20, 40, 60, then 70ul formic acid to different samples, vortexing and testing 2ul on a pH strip after each one.  I determined that 70uL was sufficient to achieve <2 pH.  I then topped off the "test" samples to acheive a total of 70ul FA addition, and added 70ul to all remaining samples, vortexed. 

**NOTE:** last desalting day I used 150ul FA, this time 70ul. This is likely b/c the 10% FA solution we used (prepared by Rhonda) was likely actually 5%, since it appears she prepared solutions erroneously thinking that the stock FA was 100% (which it is not, it is 50%). Here are the pH test strips and notes of which samples I tested:

    ![file_001](https://user-images.githubusercontent.com/17264765/28006964-6f17a0ca-6506-11e7-99cc-cc5fc5657d59.jpeg)

##### Step 4: Washed column: **Added 200 µl solvent A to columns**, spun for **3 mins @ 2000 rpm**, repeating 3 times for a total of 4 times. Discarded remaining liquid everyother time to accomodate room for next round.

##### Step 5: Equilibrated column: **Added 200 µl solvent B to columns**, spun for **3 mins @ 2000 rpm**, repeating 2 times for a total of 3 times. Discarded remaining liquid everyother time to accomodate room for next round.

**NOTE:** Several columns did not fully release all the solvents after centrifuging.  I consulted with Emma, who said that I could increase the RPM or re-centrifuge to release all the liquid.  I did so. 

    ![file_001](https://user-images.githubusercontent.com/17264765/28006964-6f17a0ca-6506-11e7-99cc-cc5fc5657d59.jpeg)

#### Step 6: Loaded protein on column: **Added all digested sample to columns** (100 ug protein in 100 uL). Spun for **3 mins @ 3000 rpm**. Collected flow-through, put back on column and spun again. Peptides are now in the columns. Transferred the remaining liquid to new tubes labeled G#-E-1 (just in case) and store at -80C.

##### Step 7: Washed salts through column: Wash columns with 200 µl solvent B, spinning at 3000 rpm for 3 minutes, repeated twice for a total of 3 times. Transferred column to clean collection tubes labeled G#-F, and saved remaining liquid at the bottom of each "G#-E" tube by closing snap-top and stored at -80C. This was saved "just in case."

##### Step 8: Eluted peptides. **Added 100 µl solvent A**, spun for 3 mins @ 3000 rpm, repeated once for a total of 2 times. **Good warning: The peptides are now in the liquid- do not discard!**

A note on centrifuges: We have 3 centrifuges with 24 spaces, although one cannot easily fit 24 macrospin columns in at a time (it's hard to get them in and out), and you cannot use the centrifuge cap, nor close the tops on any columns (seems risky): 
![file_002](https://user-images.githubusercontent.com/17264765/28006968-72c2d0a0-6506-11e7-8ba9-1d0cd0681cb7.jpeg)

I maximized space and ease with 18 samples per centrifuge. Also, halfway through the process one centrifuge, which I stole from the fridge, started giving me ERROR 3. 

##### Step 9: Took samples on wet ice to Genome Sciences to use speed-vac. Evaporated samples to near dryness at 25degC in speed vac. Note that while the original protocol called for 4C, Emma advised that it is OK to evap at 25degC to quickent the process.  The temperature at this point is not as crucial, however when time allows it is best to evap at a temp close to 4C to minimize degredation.

At this point I stored my dehydrated samples in the -80 until I confirm with: 
  1) Jose to see, for samples that originally didn't have much protein, how he adjusted the amount he used in the digestion step. For example, there were several samples with low concentration, and I believe he used 100uL, resulting in <100ug protein in my peptide sample; and
  2) Emma to see if, for low concentration samples, I should reduce the Final Solvent volume to achieve 1ug/uL. 
