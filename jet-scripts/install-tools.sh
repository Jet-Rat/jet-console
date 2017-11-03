#!/bin/bash

#sudo aptitude update && sudo aptitude -y upgrade

sudo aptitude install \
	wget ftp man rsync parted ntpdate \
	openssh-server openssh-client \
	tmux zsh vim multitail \
	tcpdump netcat nmap \
	iotop iftop atop \
	awk gcc make automake git
