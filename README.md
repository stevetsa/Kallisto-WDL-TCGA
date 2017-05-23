# Kallisto-WDL-TCGA
This repo contains FireCloud TSVs and WDL for running fastq.tar.gz in FireCloud TCGA buckets in batch mode. 
<br>A related tutorial available here - https://github.com/stevetsa/Kallisto-WDL 
Nature Biotechnology 34, 525–527 (2016), doi:10.1038/nbt.3519
<br>https://hub.docker.com/r/stevetsa/docker-kallisto/

This tutorial assumes basic knowledge of WDL.  Refer to "Related Resources" on the bottom of the page for additional tutorials.

1) Create FireCloud workspace.  You should get a Google bucket link after you create a workspace (fc-.....)
2) Upload transcripts file in FASTA format to the Google bucket in 1) and edit workspace attribute.
3) Modify the TCGAFASTQ column in 2kallisto_sample.txt to reflect the Google bucket associate with the TCGA FASTQ files (gs://....)
   Rename to remove "(dummy)" in file name.
4) Under "Data" tab, click on "Import Data" and upload kallisto_participants.txt, kallisto_samples.txt, kallisto_sample_set.txt and kallisto_sample_set_membership.txt in that order.
5) Under "Method Configuration", click on "Import Configuration.." and upload the kallisto_tcga_simple.wdl file
6) Run the analysis with "samples" and define "this.samples" at runtime.

Other Related Resources
This is a repository for Workflow Description Language (WDL) files, which are used to run analysis on the FireCloud.
https://software.broadinstitute.org/firecloud/

Related resources
https://github.com/broadinstitute/wdl https://github.com/broadinstitute/cromwell https://github.com/teamcgc/cgcR/blob/master/vignettes/FireCloud-UsingWDL.Rmd https://github.com/teamcgc/cgcR/blob/master/vignettes/FireCloud-RNAseqUsingStar.Rmd
