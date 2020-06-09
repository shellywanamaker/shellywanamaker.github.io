Methylkit analysis 
- NAs in TILES!!!
https://github.com/al2na/methylKit/issues/71
- problematic: coverage files not overlapping with methylkit object counts. The data is not destranded at this point so these numbers shouldn't be off unless bismark .cov files are using a filter that methylkit is not
- Compare .cov.gz bismark files with methylkit myobj counts