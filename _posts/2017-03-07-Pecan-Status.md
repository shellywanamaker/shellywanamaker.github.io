--- 
layout: post
title: Checking in on Pecan
---

### Pecan has been running since February 22nd. That's almost 2 weeks!  After several days of trying to log on to Emu to check in on the progress, I finally was able to get some information and view logs: 


Good news is that Emu has allowed me to log on and check out the progress of Pecan. From what I can tell Pecan is still running.  Bad news is that the queue is still very long. A major error on my part was running Pecan on all data files, including blanks, and running them alphabetically which started started with blanks first. Next time - prioritize sample file.  Here's the queue:

![image](https://cloud.githubusercontent.com/assets/17264765/23675297/be4ff038-032d-11e7-9779-bdc1d624cee1.png)

I'm checking out the various logs for any errors.

Here are example Percolator logs:

![image](https://cloud.githubusercontent.com/assets/17264765/23675570/a00bf148-032e-11e7-8c0c-354b8e3e5aa4.png)

It looks like every output file has an associated error file. Most e-logs are 0kb (I assume e = "error"?), but a few recently created logs have contents and show an error (see screenshot for error).  Not sure if this is a major issue or not. 

Here is the list of most recent Pecan logs, I've outlined some e-logs in red and o-logs in yellow:

![image](https://cloud.githubusercontent.com/assets/17264765/23676141/90cc077a-0330-11e7-9c77-de8def223fb5.png)

Here's an example e-logs and an o-log; it's curious - there doesn't appear to be any error messages in this. Perhaps e doesn't stand for "error?"

![image](https://cloud.githubusercontent.com/assets/17264765/23676532/db66b8e2-0331-11e7-8e45-f23f4e73b810.png)
