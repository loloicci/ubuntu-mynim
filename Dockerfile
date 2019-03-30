FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git gcc
RUN git clone https://github.com/loloiccl/Nim.git -b my-master
RUN cd Nim && sh build_all.sh
ENV PATH /Nim/bin:$PATH