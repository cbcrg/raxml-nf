RAxML 
======

A Dockerized version of [RAxML](https://github.com/stamatak/standard-RAxML)

How to use
-----------

Pull the Docker image with the following command: 

    docker pull cbcrg/raxml-nf 
    
    
After that your can run RAxML with the following command: 

    docker run cbcrg/raxml-nf raxmlHPC [raxml command line options]
    

Pthreads version can be executed with the following command line: 

    docker run cbcrg/raxml-nf raxmlHPC-PTHREADS [raxml command line options]
    
    
Bonus
------

You can access the container  by running this command 

	docker run -ti cbcrg/raxml-nf bash
	
	
