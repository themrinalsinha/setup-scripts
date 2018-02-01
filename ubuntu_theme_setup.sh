#!/bin/bash
# Tested on ubuntu 16.04.3
# Ubuntu tweak tool - for applying theme.
sudo apt install unity-tweak-tool

# Installng theme via. PPA
sudo add-apt-repository ppa:ravefinity-project/ppa -y
sudo apt -y update
sudo apt install -y vivacious-colors-gtk-dark
sudo apt install -y vivacious-colors-gtk-light
sudo apt install -y vivacious-unity-gtk-dark
sudo apt install -y vivacious-unity-gtk-light

# Installing icon via. PPA.
sudo add-apt-repository ppa:noobslab/icons -y
sudo apt -y update
sudo apt install -y ultra-flat-icons

sudo add-apt-repository --remove ppa:ravefinity-project/ppa -y
sudo add-apt-repository --remove ppa:noobslab/icons -y
sudo apt -y autoremove
sudo apt -y autoclean
