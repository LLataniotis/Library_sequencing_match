#!/usr/bin/perl
for z in *.gz; do echo $z; zcat $z | awk 'NR%4==2' | ./match.pl | sort -nrk3 | cat > LL_MYC_coverage.txt ; done