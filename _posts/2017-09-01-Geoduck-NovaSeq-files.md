Here is a summary of the new data dump. 

>HiSeq folders for RNASeq and Mate Pair libraries;
NovaSeq run for all combined.  The MP libraries have a 800 bp insert and the RNA Seq libraries have a 300bp insert so they were loaded in a 10:1 MP:RNA into the NovaSeq.
There is a sample sheet loaded on the hard drive that should indicate sample identifiers.  Those identifiers are in the sequence files.

>For the HiSeq MP run we had 4 MP libraries, for the HiSeq and MiSeq RNA-seq runs we had 8 RNA-seq libraries. For the NovaSeq we had 5 RNA-seq and 4 MP due to the index collision.

<img src="http://eagle.fish.washington.edu/cnidarian/skitch/nightingales_1F59B97A.png" alt="nightingales_1F59B97A.png"/>

In the original data delivery (Hard Drive).
Only NovaSeq had fastq files....

<img src="http://eagle.fish.washington.edu/cnidarian/skitch/SampleSheet_csv_and_2017-09-01-Geoduck-NS-run_md_1F59BCB3.png" alt="SampleSheet_csv_and_2017-09-01-Geoduck-NS-run_md_1F59BCB3.png"/>

<img src="http://eagle.fish.washington.edu/cnidarian/skitch/nightingales_1F59BD26.png" alt="nightingales_1F59BD26.png"/>


<img src="http://eagle.fish.washington.edu/cnidarian/skitch/Inbox_–_roberts_sbr_gmail_com_1F59B9B9.png" alt="Inbox_–_roberts_sbr_gmail_com_1F59B9B9.png"/>


Looking at 4 `AD0002` files    

```
!/Applications/bioinfo/FastQC/fastqc -t 6 \
AD002_S9_L001_R1_001.fastq.gz \
AD002_S9_L001_R2_001.fastq.gz \
AD002_S9_L002_R1_001.fastq.gz \
AD002_S9_L002_R2_001.fastq.gz
```

Looks good except Nextera transposase

<img src="http://eagle.fish.washington.edu/cnidarian/skitch/MultiQC_Report_1F59CF5B.png" alt="MultiQC_Report_1F59CF5B.png"/>


---

As seen above there are some directories that have indices for RNA and MP libraries.


>It’s actually the other way around, the RNA-seq libraries were pulled out of this run so you should have fewer RNA-seq libraries, but all of the MP libraries. So the NR013_AD013 should just read as AD013. The sample sheet should have been updated to reflect that, but it looks like it was left in.

An effort that is not trivial is getting these files into a single directory.

The DNA MP NovaSeq libraries are found together on owl [here](http://owl.fish.washington.edu/halfshell/working-directory/17-09-01/).

