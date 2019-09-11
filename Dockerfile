FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y pv curl
RUN apt-get install -y file

COPY bpi-tools/* /root/
RUN cd /root/ && bash bpi-tools

RUN apt-get install -y make
RUN apt-get install -y gcc
RUN apt-get install -y bc
