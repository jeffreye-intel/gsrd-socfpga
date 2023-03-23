FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y \
        gawk wget git-core \
        diffstat unzip texinfo \
        gcc-multilib build-essential \
        chrpath socat cpio python3 \
        python3-pip python3-pexpect \
        xz-utils debianutils \
        iputils-ping python3-git \
        python3-jinja2 python3-pip \
        libegl1-mesa make \
        xterm libsdl1.2-dev \
        python3-subunit \
        mesa-common-dev gcc g++

RUN mkdir -p /work

RUN git clone https://github.com/openembedded