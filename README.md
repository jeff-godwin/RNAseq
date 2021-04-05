# RNAseq
An automated BASH script for analysing RNA sequencing data

Input required is FASTQ files, reference fasta genome and reference GTF. 

Pipeline starts with reads filtering using fastp (can be skipped if not required)

Hisat2 is used for alignement and the transcripts are assembled using stringtie.
The read counts for assembled transcripts are counted using htseq-count

All required tools are installable using conda.
