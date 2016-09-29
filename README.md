# RAxML-NF

This repository contains: 

1) A dataset containing motor protein Prestin from 35 different species, as published by Liu et al.15. Motor protein Prestin is expressed in mammalian outer hair cells (OHCs) and is thought to confer high frequency sensitivity and selectivity in the mammalian auditory system.

2) Results of RAxML estimated phylogenetic trees run on Mac, Linux and with Nextflow portable runtime. 

3) The instructions how to replicate these results.


## Folder structure

* Folder `data/`: input dataset. 

* Folder `RAxML_NF_RESULTS/`: experiment results. 


## How to replicate results 

Clone this repository from GitHub using the following command: 

    git clone https://github.com/cbcrg/raxml-nf.git

then move in the directory `raxml-nf` create by the clone command.
 

### Mac 

Download the RAxML toolset from 
[this link](http://www.sfu.ca/biology2/staff/dc/raxml/raxml/raxmlHPC-AVX-v8.zip) and 
install it, making sure that the `raxml` binary is in a directory in your `PATH`.


Run the following command: 

    raxmlHPC -T 2 -f d -j -m PROTGAMMALG -s data/prestin_SLC26A5.35eutheria.original.msa -n PRESTIN_MAC -p 9


### Linux

Download the RAxML toolset for Linux from 
[this link](https://github.com/stamatak/standard-RAxML/archive/v8.0.0.zip), 
compile and install it properly, making sure that the `raxmlHPC` binary is in a directory in your `PATH`.


Move in the `raxml-nf` subfolder. 

Run the following command:
  
    raxmlHPC -T 2 -f d -j -m PROTGAMMALG -s data/prestin_SLC26A5.35eutheria.original.msa -n PRESTIN_LINUX -p 9
    
    
    
### Nextflow Linux & Mac

Install Nextflow with the following command: 

    curl -fsSL get.nextflow.io | bash

Install Docker following the instruction at [this page](https://docs.docker.com/engine/installation/). 

Move in the `raxml-nf` subfolder. 

Run this command 

    nextflow run raxml.nf -with-docker
 
The command above executes RAxML by using by default the parameters specified in the native
command line provided in the previous examples. 




    
