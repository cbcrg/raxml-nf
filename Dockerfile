FROM debian:wheezy
MAINTAINER Maria Chatzou <mxatzou@gmail.com>


RUN apt-get update --fix-missing; \
  apt-get install -q -y bc wget curl vim nano unzip make gcc g++; \
  apt-get clean 

RUN wget -q https://github.com/stamatak/standard-RAxML/archive/v8.0.0.zip \
  unzip v8.0.0.zip \
  rm -rf v8.0.0.zip; 
  
  
#
# Compile RAxML 
# See https://github.com/stamatak/standard-RAxML
#  
RUN cd standard-RAxML-8.0.0; \
  make -f Makefile.gcc; rm *.o; \
  mv raxmlHPC /usr/local/bin/; \
  cd ..; 
   

#
# Add the wrapper 
# 
ADD bin/raxml /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/raxml"]

