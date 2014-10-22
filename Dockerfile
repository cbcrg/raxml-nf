FROM debian:wheezy
MAINTAINER Paolo Di Tommaso <paolo.ditommaso@gmail.com>


RUN apt-get update --fix-missing; \
  apt-get install -q -y bc wget curl vim nano unzip make gcc g++; \
  apt-get clean 

RUN wget -q https://github.com/stamatak/standard-RAxML/archive/master.zip -O RAxML.zip; \
  unzip RAxML.zip; \
  rm -rf RAxML.zip; 
  
  
#
# Compile RAxML 
# See https://github.com/stamatak/standard-RAxML
#  
RUN cd standard-RAxML-master; \
  make -f Makefile.gcc; rm *.o; \
  make -f Makefile.PTHREADS.gcc; rm *.o; \
  mv raxmlHPC /usr/local/bin/; \
  mv raxmlHPC-PTHREADS /usr/local/bin/;  \
  cd ..; \
  rm -rf standard-RAxML-master
   


