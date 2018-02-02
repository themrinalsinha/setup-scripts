#!/bin/bash

# Updating and removing unused packages
sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove

# Essential packages
sudo apt install -y build-essential g++ cmake git libpq-dev synaptic gdebi alien checkinstall zip unzip

# Media I/O
sudo apt install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev

# Video I/O and player
sudo apt install -y vlc browser-plugin-vlc libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

# Other support packages
sudo apt install -y redshift redshift-gtk unity-tweak-tool gparted sshfs putty filezilla

# Web servers and database servers.
sudo apt install -y postgresql postgresql-contrib nginx

# Python related packages
sudo apt install -y python-dev python-tk python-numpy python3-dev python3-tk python3-numpy
