--- 
layout: post
title: OA Prep: Devil's in the details 
---

## Spent the day @ Manchester making the final (hopefully) touches to OA system.  Also sampled the F2 population (Katherine's). Here's a breakdown:   
 
### Header Tanks:
 * Header 2, which was supposed to be ambient, was consistently reading ~7.5. This is too low, since ambient in other tanks have been reading 7.78.  I disconnected the CO2 tube from the manchurian injector, and capped it. I drained the tank 1/2 way, and refilled. pH levelled off to 7.78 by the end of the day in the header (H2).  
 * After watching the pH in Header 1 since Wednesday, and seeing pH drop to low 6, it was obvious that adjustments were needed to the CO2 injections system. Here's what I did:
   * Drained Header 1 to 1/3 the volume, and refilled   
   * Lowered pressure in main CO2 line to ~15psi  
   * Increased the injection frequency from 120 to 180 seconds  
   * Decreased the injection duration from 0.8 to 0.4 seconds  
   * **Changed set point to 7.38 <-> 7.42; since Ambient is ~7.8, I want a larger difference between treatments**  
   * Note: I noticed water had collected again in H1's CO2 line. I drained it again; perhaps we need a better sealant on the CO2 connection.  
 * It's been ~18hrs since making htese adjustments and pH seems to be hovering around 7.4! Will continue to monitor.  
 * **Reminders:**  
   * Header 1 is connected to Relay 2 for CO2 injection  
   * Yellow Durafet outputs to the left Honeywell screen, top, as "input pv 1"  
   * PInk Durafet outputs to the left Honeywell screen, bottom, as "input pv 2"  
   * Green Durafet ouputs to the right Honeywell screen, bottom, as "input pv 2"  
 
### Culture Tanks:  
 * Drained all tanks, cleaned with Vortex.
 * One tank has outflow drain @ bottom; capped that.  
    * **Note: late in the day I saw 2 nicely insulated tanks from last year's experiment stored in the Warehouse. Let's use these next time we clean tanks**     * Labeled tanks: #1-3 = low pH #4-6 = ambient
 * Labeled and installed HOBO temperature loggers - one logger per tank.  
 * Set flow rate on all tanks to 1 Liter/minute.  Did not mark valves to replicate this at each cleaning - will do so next time.

### Probes
  * I had left the prepared Tris floating in a culture tank so that Tris was chilled when I got there. Tris was prepared based on the recipe from [Taylor Shellfish (Rhonda)](https://github.com/RobertsLab/project-geoduck-oa/wiki/Durafet-protocol-(via-Taylor)), with Salinity of 28.0, which currently is the ambient at Manchester. 
  * Rinsed Durafet tips with Tris, then placed all in fresh container of Tris and let sit for 20 minutes. 
  * Took temperature in Tris and used pH Calculator to determine pH:
    * Temp = 10.02  
    * S = 28.0  
    * pH = 8.56  
  * Calibrated Durafets: (FYI all temp readings on Durafets were 10.0; looked accurate)  
    * Yellow Durafet: No re-calibration needed  
    * Pink Durafet: Adjusted from 8.58 -> 8.56  
    * Green Durafet: Adjusted from 8.69 -> 8.56  
  * Calibrated other "mystery" pH Probes via same process as Durafets  
    * Temp = 11.90  
    * S = 28.0  
    * pH = 8.5  
    * **NOTE:** Code needed to configure the +GF+ screen is: "up, up, up, down"; to exit configure push "up" & "down" at the same time. 
  * Installed pH probes to the following locations:
    * Yellow: Header 1, the low pH tank (this is called "pH Control" on [safsoa site](https://olyoys.wordpress.com/page/4/)
    * Pink: Culture tank #4, ambient
    * Green: Culture tank #?, low pH (figure this out on Wed.)  
    * Mystery pH probe 1: Culture tank #?, ambient (figure this out on Wed.)  
    * Mystery pH probe 1: Culture tank #?, low pH  (figure this out on Wed.)  

### Installed Algae Dosing Pumps  
  * Attached dosing pumps to table; cut tubing and installed - one pump per line. 
  * Soaked components in Vortex for ~1hr, then rinsed and installed
  * Here are the specs for the metering/dosing pumps: 
  ![Metering Pump](https://github.com/laurahspencer/LabNotebook/blob/master/images/IMG_5235.JPG?raw=true)
    
### Created labels for Olympia Oysters, using the following names: 6 & 10 denote 6degree and 10degree overwintering treatments; pH 8 and 7.5 denote OA treatments, and -A, -B & -C denote replicates in 3 separate tanks.  
  * SN-6-ph8-A, -B, & -C  
  * SN-6-ph7.5-A, -B, & -C
  * SN-10-ph8-A, -B, & -C  
  * SN-10-ph7.5-A, -B, & -C  
  * NF-6-ph8-A, -B, & -C  
  * NF-6-ph7.5-A, -B, & -C  
  * NF-10-ph8-A, -B, & -C  
  * NF-10-ph7.5-A, -B, & -C   
  * HL-6-ph8-A, -B, & -C    
  * HL-6-ph7.5-A, -B, & -C      
  * HL-10-ph8-A, -B, & -C      
  * HL-10-ph7.5-A, -B, & -C    

### Sampled the last batch of oysters, Katherine's F2's, in an identical fashion as the [2/4/2017 sampling](https://laurahspencer.github.io/LabNotebook/OysterStress_Samping,System-setup/).  These guys were much smaller, but I used finer pointed tweezers and a sharper shucking knife, so the dissection was much easier! 

#### K-6 samples #1-9:
![k-6 samples in cassette](https://github.com/laurahspencer/LabNotebook/blob/master/images/2017-02-11_Samples_K-6_1-9.JPG?raw=true)

#### And locations of all samples in histology cassettes: 
![histology map](https://github.com/laurahspencer/LabNotebook/blob/master/images/2017-02-11_Katherine_Histology-Cassettes.JPG?raw=true)
   
#### Also moved Yaamini's Pacific oysters from the outside upwelling tanks to the OA system, but only to the ambient tanks. There are ~60 oysters per tank (182 total) 
 
