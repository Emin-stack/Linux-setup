FROM ubuntu:22.04

# Update apt software source (for China mainland):
RUN sed -i s:/archive.ubuntu.com:/mirrors.tuna.tsinghua.edu.cn:g /etc/apt/sources.list

# Prerequisites
RUN apt-get clean \
    && apt-get -y update --fix-missing \
    && apt-get install -y ca-certificates \
    && apt-get install -y build-essential gdb git libreadline-dev libsdl2-dev libsdl2-image-dev llvm-11 llvm-11-dev \
    && ln -s /usr/bin/llvm-config-11 /usr/bin/llvm-config \
    && apt-get install -y g++-riscv64-linux-gnu binutils-riscv64-linux-gnu device-tree-compiler \
    && apt-get install -y openjdk-17-jdk wget curl \
    && apt-get install -y help2man perl python3 make autoconf g++ flex bison ccache libgoogle-perftools-dev numactl perl-doc libfl2 libfl-dev zlib1g zlib1g-dev \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y gtkwave \
    && apt-get clean
