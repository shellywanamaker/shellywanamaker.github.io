---
layout: post
title: Demultiplexing and converting .raw MSMS files
---

### Let's revisit Geoduck Mass Spec data!

#### After working the .raw data in Feb/March through MS Convert, Pecan, and Skyline we've developed some lessons learned:
  * When working with Lumos data all programs must be Windows
  * First step with .raw files is demultiplexing & converting to .mzML via MSConvert; need to use MSConvert at the command line
  * Pecan requires a very powerful machine; we are going to either use Hyak or have Emma run Pecan on the Genome Sciences server
  
  
#### Demultiplexing and converting to .mzML using MXConvert

NOTE: I'm using the Roberts Lab Woodpecker computer 

  **Step 1:** Download .raw files from Owl to local directory on computer, and unzip. Woodpecker's GUI "extract" didn't work (resulted in many 0kb files), so I downloaded WinZip and used that to unzip folder.  
  **Step 2:** Open terminal; on Windows computer use the search function and type in: cmd.exe  
  **Step 3:** Change working directory to the folder where .raw files are saved. On windows computer use: cd c:\Users\srlab\ etc.  
  **Step 4:** Paste the MSConvert script into the terminal: `C:\Users\srlab\Documents\oystertest\20170412_pwiz
_testBuild_addMinWindowSize\msconvert.exe --zlib --64 --mzML --filter "peakPicking true 1-2" --f
ilter "demultiplex optimization=overlap_only" 2017_January_23_envtstress_geoduck1.raw`  
  **Step 5:** Since the command worked with no errors, I opened up three more windows and ran the command on three more files.  
  **Step 6:** Wait! I started the run at 2pm on 3/14.  Here are my 4 windows, which take up ~50% CPUs on Woodpecker (Yaamini's using the rest)

![step6](https://cloud.githubusercontent.com/assets/17264765/25057715/2dca9f1e-2127-11e7-88c3-90c174b48eed.png)
