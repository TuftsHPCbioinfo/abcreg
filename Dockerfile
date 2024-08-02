From ubuntu:20.04

MAINTAINER Yucheng Zhang<yzhang85@tufts.edu>

#Exporting variables needed
ENV TZ='America/Indiana/Indianapolis'
ENV LC_ALL=C
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV PATH=/opt/ABCreg/src:$PATH

## Install latest cmake
RUN apt-get update -y && apt-get install -y gcc g++ wget build-essential git libgsl-dev libz-dev

# Install ABCreg
RUN cd /opt && git clone https://github.com/molpopgen/ABCreg.git && cd ABCreg/src && make