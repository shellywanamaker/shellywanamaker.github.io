---
layout: post
title: SRM mass spec refresher, prepping samples with PRTC
---

### Mass Spec refresher, final sample prep (+PRTC, transferring to autosampler vials)

#### Prepare PRTC from stock solution to add to samples:
 * As in the DIA preparation I did the following with [Peptide Retention Time Calibration Mixture ThermoFisher #88320](https://www.thermofisher.com/order/catalog/product/88320), stock concentration is 0.5pmol/ul. 
 * Pipetted 20ul of PRTC into new tube - the PRTC I used was in Emma's box, and was an aliquot of 20ul.
 * Added 30ul acetonitrile, vortexed & centrifuged lightly
 * Final volume is 50ul of a [200fmol/ul]
 * Pipetted 1.88ul into each autosampler vial
     * **Oh NO! I forgot that i needed to first pipette my mixtures into centrifuge tubes, mix, then transfer to the autsampler vial. I salvaged as much diluted PRTC as I could and restarted.**
 * I needed more PRTC.  There was another aliquot of stock PRTC in my sample box (as per Yaamini). It was not a full 20ul. I pipetted 10 ul stock PRTC into my PRTC dilution tube, then added 15ul  “Final Solvent," vortexed then spun down. Thus, I ended up using a mix of: salvaged initial mix of PRTC + 25ul second preparation. 

#### Prepared PRTC, Sample, and Final Solvent mix
Labeled new mini centrifuge tubes (0.75ul) and autosampler vials with my sample #'s, organized them in the order I will run them. I will add PRTC, sample & final solvent to the centrifuge tubes, mix, then transfer to the autosampler vials.

Equations from Emma to calculate volumes to add:  
* _How much PRTC volume should be added?_  
    *  (PRTC final concentration)*(final volume)*(1/PRTC stock concentration), i.e. (25 fmol/μl)*(15 μl)*(1/200 fmol/μl) **= 1.88ul PRTC for all my geoduck samples**  
* _How much sample should be added to each autosampler vial?_  
    * ((μg to be injected/injection volume)*final volume)/sample concentration, i.e. ((1 μg/2 μl)*15 μl)/concentration
* _How much Final Solvent to add to each autosampler vial?_ Final volume should be 15ul
    * 15ul - vol PRTC - vol Sample
* Calculations in “Samples for SRM” spreadsheet
* Samples G002 & G016 concentrations were low, and thus the vol sample was >15ul. In these cases I added 3.13ul sample (15ul - 1.88ul PRTC). 
* Worked with the first 25 samples on my randomized list- the rest I kept in the freezer and will prep on Wednesday or Friday (pending PRTC delivery). Here’s the vol of each sample, PRTC, and Final Solvent added. Highlighted samples were low in concentration and thus required irregular volumes:
![SRM Samples](https://github.com/laurahspencer/LabNotebook/blob/master/images/2017-07-20-_SRM-Sample-Sequence,Prep.png?raw=true)

#### Bubbles
When I set my pipette to 15ul I consistently was getting a bubble, likely b/c I had a hard less than 15ul. So, I set my pipette to 14.8, and this helped. However, in a handful of samples a bubble got into the autosampler vial and I couldn’t pop it. So, I pulled the mixture out of the autosampler vial, returned it to the centrifuge tube, centrifuged it to remove bubbles, then re-pipetted it into the autosampler vial. 

#### Mass Spec Refresher / notes
* Loaded my samples in the mass spec tray as per the below map. NOTE: Do not open door when mass spec is "injecting"

Plate 1

|   | 1    | 2     | 3    | 4    | 5    | 6      | 7    | 8    |
|---|------|-------|------|------|------|--------|------|------|
| A |      | Blank | QC   |      |      |        |      |      |
| B | O01  | O12   | O22  | O113 | O118 |        |      |      |
| C | O26  | O90   | G013 | G120 | G047 | G017   | G079 | G127 |
| D | G060 | G009  | G002 | G128 | G016 | G071-A | G114 | G045 |
| E | G132 | G031  | G012 | G116 | G043 | G015   | G040 | G110 |
| F | G008 | G109  | G122 |      |      |        |      |      |

* Emma prepared my methods file using the transitions I sent her and saved on the mass spec computer
* Edit the sequence table to assign sample vial location, sample & file name, vol to inject, and method to use. E.g.:
  * File name: auto-fills based on previous line; can edit if necessary. I'm sticking with Emma/Yaamini's naming convention of "2017_July10_bivalves_#" where # increases sequentially for samples AND blanks. 
  * Comment: sample ID, e.g. G013
  * Path: directory where data will be saved. 
  * Instrument method (Inst Meth): path to the method file - Emma prepped this for me
  * Position: Tray:row,column - for example my G013 sample is located in, 1:C,3 
  * Injection Volume (Inj Vol): 2ul for samples, 3ul for blank and QC
  
![SRM Sequence Table](https://github.com/laurahspencer/LabNotebook/blob/master/images/2017-07-20-_SRM-Sequence-Table.png?raw=true)

* The above image shows my sequence for the first 25 samples, starting below the highlighted cell. You'll see a pattern: Run 5 samples, then a QC, then a blank. Repeat. 

* NOTE: if anything in the Acquisition Queue needs to be edited, it's best to 1) delete existing, incorrect sequence row in the acquisition queue, 2) create a **new row** in the sequence table with the correct info, 3) add to the acquisition queue.
 
