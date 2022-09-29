FROM ubuntu:latest
#FROM kalilinux/kali-rolling:latest

RUN apt-get update && apt-get upgrade -y

#install basic packages
RUN apt install -y vim-tiny screen wget

#for programming
RUN apt install -y g++ gdb
RUN apt install -y python3

#for grayhat excercise
RUN apt install -y binutils nasm strace ltrace checksec patchelf #ropper
RUN apt install -y ropper


COPY ./screenrc /root/.screenrc
COPY ./var /root/.var
RUN echo 'source /root/.var' >> /root/.bashrc

