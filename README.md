RAxML 
======

A Dockerized version of [RAxML](https://github.com/stamatak/standard-RAxML)

How to use
-----------
    
You can run RAxML using the following command: 

    nextflow run cbcrg/raxml-nf [raxml command line options]

For example: 

    nextflow run cbcrg/raxml-nf -process.cpus 2 --base_dir data/* -with-docker
    
    
Bonus
------

You can access the container  by running this command: 

	docker run -ti --entrypoint /bin/bash cbcrg/raxml-nf
	
	
