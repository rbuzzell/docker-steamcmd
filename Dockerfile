# Let's use alpine and see what happens 
FROM ubuntu

MAINTAINER Ryan Buzzell <ryan@buzzell.io>

# Prerequisites
RUN apt-get update -qq
RUN apt-get install -qq lib32gcc1 curl

# Setup Steam
RUN mkdir /steamcmd
RUN cd /steamcmd
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf - -C /steamcmd


