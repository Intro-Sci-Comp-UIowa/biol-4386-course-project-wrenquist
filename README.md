# BIOL:4386 Course Project - Reproducing *Deriving genotypes from RAD-seq short-read data using Stacks*
## Project Homework 1 - Feb 12 2023

## Reference 
Rochette, N., Catchen, J. Deriving genotypes from RAD-seq short-read data using Stacks. Nat Protoc 12, 2640–2659 (2017). https://doi.org/10.1038/nprot.2017.123

## Introduction pt 1- My research topic and data I currently have
Research topic: I study the relationship between the Slender Flower Moth (*Schinia gracilenta*) and its host plant, Sumpweed (*Iva annua*). I am interested in determining whether the genomes of this moth species contain signatures of Iva's history of cultivation and subsequent human-mediated spread across the continent.

Data that I currently have: Restriction-site associated DNA sequencing (RAD sequencing) results from 315 individuals collected from 35 sites distributed across eastern North America. We utilized RAD sequencing because it **provides efficient and flexible markers for population genetic analysis of non-model organisms with no published reference genome** (Bayona-Vasquez et al., 2019, Eaton & Overcast, 2020). RAD sequencing produces whole locus and SNP datasets. 

## Introduction pt 2- Reproducing STACKS parameter paper  
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

## Figure to reproduce **ONLY PART A** 
<img width="612" alt="Screen Shot 2023-02-12 at 9 44 37 PM" src="https://user-images.githubusercontent.com/125233832/218365828-d5cec20e-3c88-4b13-bceb-ffaf1356975b.png">

The creators of STACKS recommend that before data analysis is continued, the raw data is run through the denovol_map.pl and examined for how different parameters are filtering loci counts. I would like to reproduce the following figure, specifically looking at **Figure 2a- mapping the number of loci shared by 80% of samples when the values of M and n parameters are varied.** A figure like this is important to analyze before running the rest of the population related summary statistics to understand what parameters will represent my dataset the best. 

This graph in Catchen et al 2017 shos that the parameter of M =4, n =4 is where the number of loci shared by 80% of samples plataues. The leveling of the number of loci shows that these parameters will be sufficient to stabilize the number of loci used in analysis. 

## Materials and Methods 

Materials: 
* Illumina sequencing files via a sequencing center in a FASTA format
* Informtion on restriction enzyme that were used for the RAD-seq library
* An archive to store population files with information about the data set and scripts that will be run 
* LINUX computing cluster

Methods: 

1. *Schinia gracilenta* caterpillars were collected off of host plant *Iva annua* and *Ambrosia artemissiifolia* all across Eastern North America from a total of 41 sites. There were 315 caterpillars collected in total. 
2. *Schinia gracilenta* DNA was extracted using CTAB DNA extraction protocol. 
3. The extracted DNA was used to prep sequences for restriction-site associated DNA sequencing (RAD seq). 
4. **3RAD was used for this sequencing method and these are the data to be used for this figure.**
5. Pre-processing required for the data are: 
* Preparing a barcode file that lists the number of samples in the lane with barcodes and indexes 
* Creating a population map that stores the population from where the sample was collected. 
* Clean and demultiplex the sequencing results 
* Check for sequencing quality 
6. Install the latest version of Stacks.
7. Once pre-processing and installation is complete, there are two scripts that will be run: 
 * denovol.pl 
 * populations
 This is the Stacks manual that is very useful throughout this process: https://catchenlab.life.illinois.edu/stacks/
 8. The log output from the populations pipeline will give information to create the graph. 
 9. The information will be pooled into an excel spreadsheet and then graphed as a line chart. 
 
