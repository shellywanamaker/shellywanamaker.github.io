Steven, Kaitlyn, and I met with Emma today to discuss proteomics. I'm doing DIA with 2015 oysterseed data, and Kaitlyn in doing DDA with 2016 oyster data.

I learned some crucial things today that have changed the way I understand and how I will continue with this analysis.
- The numbers on the .raw files next to "oysterseed" are the file numbers, NOT the sample numbers
- FOUR samples were run, and four files are associated with each file

Breakdown of oysterseed sample number and the four files associated with them:

| Temp.   |  Date   |   Silo  |     Sample No.    |   File No. from Dec.   |   File No. from Feb. |
|  :---:  |  :---:  |  :---:  |       :---:       | ---------------------- | -------------------- |
| 23C     | 9/11/15 | 9       | Oysterseed 1      | 1, 3, 4                | 5                    |
| 29C     | 9/11/15 | 8       | Oysterseed 2      | 5, 7, 8                | 6                    |
| 23C     | 9/14/15 | 9       | Oysterseed 13     | 9, 11, 12              | 7                    |
| 29C     | 9/14/15 | 8       | Oysterseed 14     | 13, 15, 16             | 8                    |

All are control seeds
Files are from Rhonda's [owl folder](http://owl.fish.washington.edu/phainopepla/C_gigas/2015-12-30/).
Some samples had to be re-done, which is why there are four February files


### Short-term goal
Re-do the whole Skyline process with all of the .raw files. And figure out a way to combine the four files per four samples, so that in the end I only have four tabs, rather than 16.

### Long-term goal
Make a K-means plot, NMDS, and/or use Venny to determine quickly which are common between 23C and 29C treatments, and which are unique.
