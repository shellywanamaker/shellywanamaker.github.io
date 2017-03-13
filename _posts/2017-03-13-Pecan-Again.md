---
layout: post
title: Pecan Again?! 
---

### Yep. 

Steven prepared a smaller geoduck proteome for me, edited to only include proteins related to stress response.  This decreased the # proteins from ~30,000 to 600, the idea being that Pecan will run faster and won't max out its "temporary memory." Here's the synopsis of me preparing files and running Pecan: 

#### Add PRTC sequence to the new database

![2017-03-13_adding-prtc-to-stress-proteome](https://cloud.githubusercontent.com/assets/17264765/23877951/05391aaa-0802-11e7-85fc-23cf613e8161.png)

#### Use Protein Digestion Simulator to execute in silico digestion

![2017-03-13_digest-settings1](https://cloud.githubusercontent.com/assets/17264765/23877953/08f6a694-0802-11e7-9a2e-78b48d0026bb.png)

![2017-03-13_digest-settings2](https://cloud.githubusercontent.com/assets/17264765/23877954/0b5dc778-0802-11e7-8208-1703bddbd324.png)

![2017-03-13_digest-settings3](https://cloud.githubusercontent.com/assets/17264765/23877955/0d693778-0802-11e7-8995-b7e5d7bca6e0.png)

![2017-03-13_digest-settings4](https://cloud.githubusercontent.com/assets/17264765/23877958/0f1fd9e6-0802-11e7-8803-4f7187e6c738.png)

![2017-03-13_digest-complete](https://cloud.githubusercontent.com/assets/17264765/23877964/11e22eb8-0802-11e7-91cb-68e5ea762dfe.png)

#### Use Galaxy online to remove excess columns; note that the output from PDS is a .txt file 

![2017-02-19_galaxy-uploading-digested](https://cloud.githubusercontent.com/assets/17264765/23878058/763b8a8a-0802-11e7-8f2f-7b4a17abed34.png)

![2017-02-19_galaxy-digested-unedited](https://cloud.githubusercontent.com/assets/17264765/23878065/7b8a04da-0802-11e7-9ac6-73d09020233a.png)

![2017-02-19_galaxy-cut-column](https://cloud.githubusercontent.com/assets/17264765/23878066/7e08c30e-0802-11e7-92dc-27182e645c9d.png)

#### Resulting edited file (note this is a .tabular format, which is fine)

![2017-02-19_galaxy-trimmed-header](https://cloud.githubusercontent.com/assets/17264765/23878069/8017df0e-0802-11e7-9c2c-dd6799979bb5.png)

#### Killing existing Pecan run 

![2017-03-13_killing-pecan](https://cloud.githubusercontent.com/assets/17264765/23878120/d1a34e1c-0802-11e7-8b31-4f62d68062c5.png)

#### Copied input files into new folder entitled "Pecan-inputs6" - This is the 6th Pecan run attempted on this data. 

![2017-03-13_pecan-input-files](https://cloud.githubusercontent.com/assets/17264765/23878122/d393edb2-0802-11e7-8578-af892269edaa.png)

#### Executing Pecan; note that I needed to edit the file paths (output and input)

![2017-03-13_running-pecan6](https://cloud.githubusercontent.com/assets/17264765/23878125/d5726c4e-0802-11e7-8fa7-bbae7927c6fc.png)

#### Checking to see that there is, in fact, a Pecan job queue

![2017-03-13_pecan6-queue](https://cloud.githubusercontent.com/assets/17264765/23878128/d6b94c9e-0802-11e7-869b-d676bc00e5ee.png)

#### Making the .job files in /percolator/ and /pecan2blib/ directories executable

![2017-03-13_making-jobs-executable](https://cloud.githubusercontent.com/assets/17264765/23878132/d83db276-0802-11e7-8f69-000723a8da85.png)

#### This "Pecan6" run was started at ~3:30pm - I'm curious to see how quickly things go with this reduced background proteome! 
