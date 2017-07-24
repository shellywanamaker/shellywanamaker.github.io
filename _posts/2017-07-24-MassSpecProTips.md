---
layout: post
title: Mass Spec, good things to know 
---

### Pro Tips for using UWPR mass spec

- On the nanoAquity UPLC Console keep an eye on the Binary Solvent Manager screen to monitor pressure.  Right click over the plot area, click Plot Properties, and change the time frame to 10 hrs.  
- If you miss-assign a vial location, or remove a vial too early (like I did), the mass spec will sense this and display an error "missing/wrong plate or vial". It will stop running. The AutoSampler program will need to be reset, and sometimes also need to hit the manual reset button on the machine.  Use the same process as when a program is not responding:  
- If program is not responding, wait until the current sequnce is done, then it may start responding. If still not responding, close the program and re-open. do the following: 
  - On Thermo XCaliber go to Status tab on the left side of the screen
  - Check that under Waters nanoACQUITY and TSQ Vantage they both read "ready to download" - if so, you can start your run. 
  - If an error, close all programs, reboot PC.  
  - Open these 3 windows: Thermo Sequence Setup, Xcaliber, NanoACQUITY UPLC Console, Thermo TSQ Tune Master. It may automatically connect. If not: 
  - Hold RESET tiny black push button down for 3 seconds. This should connect the software to Vantage.  
  - Before running sequences, on Xcaliber, select Actions -> Automatic Devices On  
  - Select & add desired sequence rows  
  - Push green "play" button - should work out.    
- If you try to open a raw file in Skyline and it says "permissions denied" or something like that, try closing Skyline and re-opening it. 
- In Thermo Xcaliber Sequence Setup, be careful when modifying the sequence table:
  - If you've already added a row to the Acquisition Queue, but you want to change something in that row, DO NOT simply edit then re-add it. Instead:
  - First, delete the rows in the Acquisition Queue that you no longer want by: clicking check box, then hitting the Delete button on a Windows keyboard, or FN+Delete on a mac (if using Team Viewer) 
  - Second, start a new row in the sequence table, complete all cells, then add that to the queue. 
  - Do not edit then re-add any rows that have already been added to the queue.

### Mass Spec Setup tutorial
- Things that are sitting out in the UWPR mass spec room are things that you can use
- First thing to make is the pre-column for the trap, we used 4.5cm, with the frit ~3mm. Trap is wider diameter 100um, and different material. Sample first goes on to the pre-column, junk is washed away within the pre-column. When installing: frit points towards the mass spec. 
- Then, go to the nanoQCQUITY; start testing your columns to make sure they can handle the pressure during your sample runs
  - Click on 0.000 uL/min, select "Trapping"
  - Solvent A: 0.3 ul/min, 5% Solvent A
  - Confirm it's still trapping
  - Watch pressure change on top plot; make sure it doesn't go too high
  - Change the flow rate on A1 to 0.5 ul/min, after it levels off record pressure
- Attach analytical column. 
  - look at it in the light, make sure there are no bubbles
  - Attach
  - Change solvent B to 5%, analytical, and @ 0.2ul. 
  - Keep an eye on the tip of the column; once a droplet begins to form, wait 10 mins. If pressure looks good, then... TB continued... 
 
