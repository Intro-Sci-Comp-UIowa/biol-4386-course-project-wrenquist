#!/bin/sh
#$ -N populations_F21F22_allgracilenta_groupedsites_Mn_r0.6
#$ -cwd
#$ -q UI
#$ -pe smp 8
#$ -M wren-renquist@uiowa.edu
#$ -m bea

populations -P /Users/wrenquist/Stacksrun_F21F22_Mn_ALL_FOLDERS/Stacksrun_F21F22_allgracilenta_groupedsites_Mn6 -O /Users/wrenquist/Stacksrun_F21F22_Mn_ALL_FOLDERS/Stacksrun_F21F22_allgracilenta_groupedsites_Mn6/Populations_r0.6 -M /Users/wrenquist/F21F22S.gr_allgracilenta_grouped_popmap_v2_021123.txt -t 8 -r 0.6 --fstats --vcf --structure --plink --write-random-snp --phylip --phylip-var
