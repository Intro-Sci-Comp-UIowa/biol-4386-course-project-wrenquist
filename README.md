# BIOL:4386 Course Project - Reproducing *Deriving genotypes from RAD-seq short-read data using Stacks*
## Project Homework 1 - Feb 12 2023

## Reference 
Rochette, N., Catchen, J. Deriving genotypes from RAD-seq short-read data using Stacks. Nat Protoc 12, 2640–2659 (2017). https://doi.org/10.1038/nprot.2017.123

## Introduction 
Use of restriction-site associated DNA sequencing (RAD seq) has increasingly been utilized to genotype populations without non-model organisms as a tool for population genetics analysis. To produce a reliable set of loci for downstream analysis, understanding of bioinformatic programs such as STACKS is necessary. 

STACKS is a software pipeline for building loci from short-read sequences, such as those generated on the Illumina sequencing results. STACKS was specifically built to work with restriction-enzyme based data, such as RAD-seq, in order to build genetic maps and conduct population genomics and phylogeography. 

The pipeline of STACKS begins with the denovo_map.pl program that executes the STACKS pipeline by running each of the following STACKS components individually: 
ustacks - build loci de novo
cstacks - creates catalogs of all loci across the population 
sstacks - match each sample against the catalog
tsv2bam - transpose data from organization by sample to organization by RAD locus 
gstacks - contig assembled from paired-end reads and overlapped with single-end locus, SNPs called , phased into haplotypes for each locus
populations - generates population-level summary statistics and export data in different formats

Specifically of interest to me are how to interpret raw data and match with parameters utilized within denovo_map.pl:
M - number of mismatches allowed between two alleles of a heterozygote sample
n - number of mismatches allowed between any two alleles of the population 
m - controls the number of identical reads required to initiate a new putative allele to accurately represent the data 

The creators of STACKS recommend that before data analysis is continued, the raw data is run through the denovol_map.pl and examined for how different parameters are filtering loci counts. I would like to reproduce the following figure, specifically looking at Figure 2a- mapping the number of loci shared by 80% of samples when the values of M and n parameters are varied. 

## Figure I want to reproduce 
<img width="612" alt="Screen Shot 2023-02-12 at 9 44 37 PM" src="https://user-images.githubusercontent.com/125233832/218365828-d5cec20e-3c88-4b13-bceb-ffaf1356975b.png">

