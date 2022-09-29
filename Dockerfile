FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

#install basic packages
RUN apt install -y vim-tiny screen wget

RUN apt install -y g++ gdb

RUN mkdir /home/mnt

WORKDIR /home
