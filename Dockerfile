# Let's use alpine and see what happens 
FROM ubuntu

MAINTAINER Ryan Buzzell <ryan@buzzell.io>

# Prerequisites
RUN apt-get update-qq
RUN apt-get install lib32gcc1 curl

# Create the steam user
RUN useradd -m steam
RUN cd /home/steam

# Setup Steam
RUN su - steam
RUN mkdir ~/Steam && cd ~/Steam
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -


