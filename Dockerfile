FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git gcc
RUN git clone https://github.com/loloiccl/Nim.git -b v0.20.0
WORKDIR Nim
RUN sh build_all.sh
WORKDIR /
RUN chmod -R 755 /Nim/bin/
ENV PATH /Nim/bin:$PATH