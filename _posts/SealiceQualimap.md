



- running qualimap on old sea lice alignments to get an idea on coverage and where in the genome things align to  

- running compute counts
	- create info file:
		- install biopython (conda install -c conda-forge biopython then I ran conda update -c conda-forge biopython; conda install -c bioconda htseq;)
		- copy python script (https://bitbucket.org/kokonech/qualimap/src/master/util/createQualimapInfoFile.py?at=master) 
		- python createQualimapInfoFile.py -g Caligus-rogercresseyi-annotations.gtf -f Caligus-rogercresseyi-Genome.fa -o sealice_counts_info.txt
		- that didn't work so I can make my own file with awk:
		- awk -F"\t" '{print $0" gene_biotype ""\""$3"\""";"}' Caligus-rogercresseyi-annotations.gtf > Caligus-rogercresseyi-annotations_biotype.gtf
		- python createQualimapInfoFile.py -g Caligus-rogercresseyi-annotations_biotype.gtf -f Caligus-rogercresseyi-Genome.fa -o sealice_counts_info.txt
		- 
	- install R packages NOISeq, opt... , and install XQuartz 
	- convert gff to gtf
		- gffread Caligus-rogercresseyi-annotations.gff3 -T -o Caligus-rogercresseyi-annotations.gtf
	- /Users/Shared/bioinformatics/qualimap_v2.2.1/qualimap comp-counts -bam Sealice_F1_S20.dedup.sorted.bam -gtf Caligus-rogercresseyi-annotations.gtf -out Sealice_F2_S22.counts -pe -s 
	- /Users/Shared/bioinformatics/qualimap_v2.2.1/qualimap comp-counts -bam Sealice_F1_S20.dedup.sorted.bam -gtf Caligus-rogercresseyi-annotations_noheader.gff-out Sealice_F2_S22.counts -pe -s

- run counts QC
	-  /Users/Shared/bioinformatics/qualimap_v2.2.1/qualimap counts -d sealice_countsqc_input.txt -c -outdir sealice_counts -k 5


Warning messages:
1: In png(path, width, height, pointsize = point.size, type = "cairo") :
  unable to load shared object '/Library/Frameworks/R.framework/Resources/library/grDevices/libs//cairo.so':
  dlopen(/Library/Frameworks/R.framework/Resources/library/grDevices/libs//cairo.so, 6): Library not loaded: /opt/X11/lib/libcairo.2.dylib
  Referenced from: /Library/Frameworks/R.framework/Resources/library/grDevices/libs//cairo.so
  Reason: image not found
2: In png(path, width, height, pointsize = point.size, type = "cairo") :
  failed to load cairo DLL

2 groups: 
valuable phenotypes/comparison to do with new samples?


- deep seq or enrichment
	- re-sequence sea lice library
		- need 5x more covereage: 
			- only ~20% reads mapped uniquely after deduplication

- NovaSeq SP 300 cycle Flow Cell: $4940
- MethylMiner kit (25preps): $784
- Zymo PicoMethyl kit (25 preps) + zymo clean up: $1435

/Users/Shared/bioinformatics/qualimap_v2.2.1/qualimap comp-counts -bam Sealice_F1_S20.dedup.sorted.bam -gtf Caligus-rogercresseyi-annotations_noheader.gff-out Sealice_F2_S22.counts -pe -s -
