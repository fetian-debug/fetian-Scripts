#!/bin/sh
# install in /usr/src
printf "Installing and Setting Up DWM\n"
cd dwm/
sudo make clean install
cd .. && cd dmenu/
sudo make clean install
cd .. && cd slstatus/
sudo make clean install
cd .. && cd st/
sudo make clean install
sudo .. && cd slock/
sudo make clean install

