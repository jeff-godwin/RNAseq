# RNAseq
An automated BASH script for analysing RNA sequencing data

Input required is FASTQ files, reference fasta genome and reference GTF. 

Pipeline starts with reads filtering using fastp (can be skipped if not required)

Hisat2 is used for alignement and the transcripts are assembled using stringtie.
The read counts for assembled transcripts are counted using stringtie and tximport.
Tximport is a R package which uses transcript-level abundance, estimated counts and transcript lengths and summarises them for used with differential analysis software such as DESeq2 and edgeR. 

Requirements are fastp, hisat, strigtie, R-base (3.6 and higher) and R packages - tximport and readr.
All required tools are installable using conda and Bioconductor
