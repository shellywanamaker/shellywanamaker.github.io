---
layout: post
title: Going through DDA
date: '2017-02-13'
categories: Proteomics
tag: [gigas, oyster, proteomics, dda, linux, windows]
---

In an attempt to go from mzXML I took Rhonda's mzXML files on Emu, copied them to my directory and rand the following

```

/home/shared/comet/comet.2016012.linux.exe \
-Pcomet.params.high-low_de \
-DCg-Giga_cont_AA.fa \
*.mzXML \
&>> output.error.comet.log

find *xml | \
xargs basename -s .pep.xml | \
xargs -I {} /usr/tpp_install/tpp/bin/xinteract \
-dDECOY_ \
-N{} \
{}.pep.xml \
-p0.9 \
-OAp \
&>> output.error.xin.log

/usr/tpp_install/tpp/bin/ProteinProphet \
interact*.pep.xml \
interact-COMBINED.prot.xml \
&>> output.error.PP.log

java -Xmx16g -jar /home/shared/abacus/abacus.jar -p \
Abacus.params
```

The intact directory is available on owl here:    
http://owl.fish.washington.edu/halfshell/index.php?dir=working-directory%2F17-02-13%2F

Download the ABACUS output [here](http://owl.fish.washington.edu/halfshell/working-directory/17-02-13/ABACUS_output.tsv)
