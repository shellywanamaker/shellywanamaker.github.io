---
layout: post
title: Complete notes from mass spec run
---

### Setup notes

Attach trap (3 cm, C18) with frit facing MS
test flow through trap - in BSM switch to trapping, set to 5% A, 0.2 flow
then up to 0.5, ~220 psi max
attached 30 cm C18 analytical column - analytical flow, 5% solvent B (ACN), flow at 0.2

let run 10 minutes after solvent droplet visible

had trouble with trap and column.
Cut column to 30 cm and replaced blocked t-junction, but still blew
replaced trap with 5 cm trap and re-equilibrated trap & analytical column
Columns still blew, so replaced analytical column. This seems to be doing the trick.

let run 10 minutes after solvent droplet visible; pressure
analytical flow (50% ACN, 0.3 flow) and let run 10 minutes (~3200 psi)
cut column to 30 cm
switch back to 5% ACN for 10 minutes, 0.3 flow (3650 psi)

LC is holding steady, so we started injecting QCs.  WE WILL NEED A NEW QC AFTER THE 12TH QC INJECTION
There are 100 ul of solvent in the blank

Yaamini selected 146 transitions, but we still had to add the PRTC, which brought total to 200...This is too many, needs to be closer to 150.
I am looking at QC data from May and some of the transitions aren't showing up well on the Vantage. I am excluding the peptides for which only 1 transition was detected in May: SFANQPLEVVYSK, GILFVGSGVSGGEEGAR
and were bad in May/had only 2 transitions in first injection today: ELASGLSFPVGFK, LSSEAPALFQFDLK
I also removed transitions if there were >3 per peptide.

2 of Yaamini's peptides are associated with 2 distinct proteins. The peptides are LVENIGNHLINTQK and LQAHLDSVSNVSK. They are from proteins CHOYP_CATA.1.3|m.11120 and CHOYP_CATA.3.3|m.21642
Both of these proteins are catalase

### Notes from Yaamini's run 

Analytical column blew early morning on 7/15
Files 82, 83, 84 and QC18 are bad
Cut a couple of mm off bottom of column, reattached, and injected a QC (QC19)
Column blew at beginning of gradient. I will need to attach a new column.
New 30 cm analytical column
analytical flow, 5% solvent B (ACN), flow at 0.2 (~2430 psi)
analytical flow (50% ACN, 0.3 flow) and let run 10 minutes (~3430 psi)
cut column to 30 cm
switch back to 5% ACN for 10 minutes, 0.3 flow (3860 psi)

What to do next:
Inject a QC and make sure signal looks OK - I started QC20 (I forgot to reattach electrical current, but did it while still trapping so I think everything should be normal)
Inject 2 more QCs (these are queued up)
Signal should be stable after this
If signal is a little weird but column is still OK, inject another QC before starting samples
Take into account extra QCs. If we will run out before Monday morning, then stop running QCs between all sets of samples (but still run blanks)
Note that file names in sample queue are off and probably need to be edited. Also, in moving things around in the sequence file I accidentally messed up the sample-file # associations for the last several that were run.
Restart queue with sample O14, mass spec file #87

from yaamini: added new QC for QC24 onwards.  NEED A NEW QC AFTER QC36
QC23 and 24 didn ot have good looking peaks, possible peak degredation. took 5 ul qc from mesocosm box, added 15 ul acetonitrile solution. 20 ul new QC in new vial, plate 1 A3

yaamini, 7/17: added more QC, good for 12 more injections. need QC after QC40/42.

### Notes from Laura's run

Laura 7/17: prepped 25 samples by adding PRTC, ACN+FA (Final solution), and transferring to autosampler vials with green lids.  Placed in vial tray @ C3 -> F3.  Added method file, sample name, and tray location to the sequence list, then added first 5 samples + QC & blanks to the active queue. NOTE on PRTC: I used the remainder of PRTC in the freezer; will need to bring more to UWPR!

Laura 7/18 @ 5:15pm Checked on the latest QC results in Skyline, "QC30", they look good - very similar to the previous QC's.

Laura 7/19 @ 11;15am: running smoothly; QC32 transitions look good except for one in Albumin. Added rows 191-197 to the active queue.
Laura 7/19 @ 5:15pm, added 65ul Final Solvent to blank located @ 1:A,2
Laura 7/20 @ 10pm - status quo

Laura 7/21 afternoon -  Placed new 40ul QC mix @ 1:A,4, this QC will be used for file # QC41 onwards; should replace after #QC51 This mix was made with my Final Solvent @ 0.1% formic acid. Noticed several undetected peptides in QC PRTC, as well as PRTC in some of my samples.  Consulted with Brook, and she advised running 2 blanks, then 3 QCs, to see if the poor quality persists.  I ran the blanks/QC to "flush" the column. Signals returned. Also, before doing this, the last two samples I ran looked good. Samples that lost signal in some PRTC peptides were: file names 183, 184, 185, 186, 190, 192, QC36, QC38, QC39, which correspond to samples: G053, G104, G055, G042, G057, G007.
Started running samples again after the three good QC runs. I will need to either reduce the # QC's or reduce the # samples, since I lost time.

7/22 @ 11am - made new blank with my 0.1% FA "final solvent", put @ 1:A,5 - changed all subsequent blanks to this tray location.
Checked the poor quality samples for air bubbles, found none.
Removed all samples in tray 2 except for the samples I will re-run since the last run had poor PRTC quality . These samples are @ locations: 2:C,4 (G053), 2:C,5 (G104), 2:C,6 (G055), 2:C,7 (G042), 2:D,2 (G057), 2:D,4 (G070).
Primed these 6 samples to re-run, and will monitor their PRTC quality.
Also removed samples from tray 1: C3-C8 since those have run twice.

7/22 @ 1:30pm: checked sample G053 re-run, some peptides looks bad in the re-run as well.  This suggests an issue with some of my samples.  I thus will not continue to run the bunk samples; will first run a blank & QC to confirm QC still looks good (last one, QC44 did), then will move forward with the other samples (currently re-running first batch of 25).
So, ran G053 & G104, then a blank & a QC, then re-started my 2nd run of Plate 1.  I'm skipping sample G128, since that data (bivalve_150) looked like crud too. I'll add that to my list of re-made samples.

7/22 @ 7PM Xcaliber program froze, aka was "Not Responding" - most recent accurate sequence file was saved and I had several samples in the active queue. Brook restarted the program and things appeared to not be affected.

7/23 Finished the 2nd run of my first 25 batch (plate 1). Loaded the 2nd batch on to plate 2 for re-run, except... the poor quality samples I started to re-run on 7/22 [2:C,4 (G053), 2:C,5 (G104), 2:C,6 (G055), 2:C,7 (G042), 2:D,2 (G057), 2:D,4 (G070)] had been sitting on the tray since 7/22, so I put them in the freezer until I decide whether or not to re-run them or re-make them.

7/24 @ 12:00am: discovered that I removed a sample before it had actually run by accident; autosampler stopped responding. 8:30am Priska restarted computer/reset Vantage and I got samples running again @ 8:30am.

7/24 @ 8:00am: Made another QC, put into new vial @ 1:A,6, ~45ul total, bivalve_QC51 and subsequent

7/25 @ 11pm (laura):
Xcaliber froze again when I went to add the dilution curve samples to the sequence table. Will wait until current active samples are finished (@ ~6am), then I'll start the dilution curve samples.
Removed most of my samples except for Gblank, OBlank, and the QC & blank. Added the dilution curve vials 1-8 @ 1:B,1 -> 1:B,8 (1= 10 O : 1 G, 8 = 1 O : 10 G).

7/26 @ 6:20am - realized I used geoduck method on Yaamini's OBlank that I'm running for her. Re-running that twice with the correct method. Queued up dilution curve samples.

7/26 @ 10:30pm - added some re-run samples (1:C,1-8, 1:D,1-4), remade 3 samples (1:E,1-3). QC & blank is OK for remainder of run.
Started Skyline Daily file with dilution curve samples.

7/28 @ 9am - realized I forgot to correctly change file names for the last ~9 samples I ran; use "created date/time" to keep them straight.

7/29 @ 10am:

- Changed to "standby" on Tune Master by clicking the "play" button in top left corner of screen
- Changed solvents to 50%/50%, and flow rate to 0.05ul; let pressure reduce to ~600psi before removing column.
- Unhooked red electrical cord
- Removed columns, save in Emma's column box w/ orange tape.
- Removed samples, transferred to UW.
