RAxML 
======

A Dockerized version of [RAxML](https://github.com/stamatak/standard-RAxML)

How to use
-----------

Pull the Docker image with the following command: 

    docker pull cbcrg/raxml-nf 
    
    
After that your can run RAxML with the following command: 

    docker run cbcrg/raxml-nf [raxml command line options]

For example: 

    docker run cbcrg/raxml-nf -f d -j -m PROTGAMMALG -s all_algs/Phy000CVIC_YEAST.clean.fasta -n my_tag -p 1.8984942 
    
    
Bonus
------

You can access the container  by running this command: 

	docker run -ti --entrypoint /bin/bash cbcrg/raxml-nf
	
	
