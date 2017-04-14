https://github.com/laurahspencer/LabNotebook/tree/master/posts---
layout: post
title: Demultiplexing & converting from .raw to .mzml
---

### Let's revisit the DNR geoduck mass spec data!

After the initial DNR geoduck data processing (MSConvert, Pecan, Skyline), we've learned that there are a few changes that need to be made. Specifically:
  * When converting .raw files (from Lumos MSMS) to .mzml, I need to demultiplex the data. What is demultiplexing you ask? More on that later. 
  * When running Pecan, do all my sample files first (including my blanks). Then, go back and run the "cleaning" blank files after.
  * Need to use Genome Sciences server, Hyak, or some other powerful machine to run Pecan, since our computers don't have enough memory

### Demultiplexing .raw files and converting to .mzML

**NOTE: all the programs needed for processing Lumos data files require Windows. For this workflow I'm using the Roberts Lab's Woodpecker machine**

  **Step 1:** Download .raw files from Owl to local folder on Windows computer.  
  **Step 2:** Extract the files from the .zip folder didn't work, as only a few files extracted correctly and the rest resulted in 0kb files. I thus downloaded WinZip program to computer and unzipped.  
  **Step 3:** Open command window. One Windows search for: cmd.exe  
  **Step 4:** Change working directory to the folder containin .raw files: `cd C:\Users\srlab\Documents\geo  
  **Step 5:** Use the following script outlined in the [DIA data Analyses](https://github.com/sr320/LabDocs/wiki/DIA-data-Analyses) instructions, with a couple directory edits. This first run only includes 1 file, so I can see if I get any errors: `C:\Users\srlab\Documents\oystertest\20170412_pwiz_testBuild_addMinWindowSize\msconvert.exe --zlib --64 --mzML --filter "peakPicking true 1-2" --filter "demultiplex optimization=overlap_only" 2017_January_23_envtstress_geoduck1.raw`  
  **Step 6:** No errors! To run more files in tandem, open up more terminal windows, navigate to the directory housing the .raw files, and enter the same script (with different file names). I have 4 windows running at the same time, on geoduck1-geoduck4. 

![step6](https://cloud.githubusercontent.com/assets/17264765/25056994/6b4f2d74-2121-11e7-80d2-859ee8f742a5.png)

  **Step 7:** Wait! Started on Friday 3/14 @ 2pm. Let's see when they finish.  

