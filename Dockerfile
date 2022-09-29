FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

#install packages
RUN apt install -y vim mc

RUN mkdir /home/mnt

WORKDIR /home
