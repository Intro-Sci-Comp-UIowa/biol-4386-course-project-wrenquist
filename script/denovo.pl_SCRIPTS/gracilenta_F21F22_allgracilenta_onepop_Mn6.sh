#!/bin/sh
#$ -N ivarun_allgracilenta_onepop_Mn6
#$ -cwd
#$ -pe smp 16 
#$ -M wren-renquist@uiowa.edu
#$ -m bea

denovo_map.pl -T 16 -n 6 -M 6 -m 3 -o /Users/wrenquist/Stacksrun_F21F22_Mn_ALL_FOLDERS/Stacksrun_F21F22_allgracilenta_onepop_Mn6 \
    --samples /Users/wrenquist/all_WR_q30_F21_F22i7i5 \
    --popmap /Users/wrenquist/F21F22S.gr_allgracilenta_onepop_popmap_020723.txt \
