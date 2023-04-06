#!/bin/sh
#$ -N populations_F21F22_allgracilenta_onepop_M3
#$ -cwd
#$ -q UI
#$ -pe smp 8
#$ -M wren-renquist@uiowa.edu
#$ -m bea

populations -P /Users/wrenquist/Stacksrun_F21F22_Mn_ALL_FOLDERS/Stacksrun_F21F22_allgracilenta_onepop_Mn3 -O /Users/wrenquist/Stacksrun_F21F22_Mn_ALL_FOLDERS/Stacksrun_F21F22_allgracilenta_onepop_Mn3/Stacksrun0.7 -M /Users/wrenquist/F21F22S.gr_allgracilenta_onepop_popmap_020723.txt -t 8 -r 0.5 --fstats --vcf --structure --plink --write-random-snp --phylip --phylip-var
