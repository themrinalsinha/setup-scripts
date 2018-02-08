#!/bin/bash

# Updating and removing unused packages
sudo apt -y update
sudo apt -y upgrade
sudo apt -y dist-upgrade
sudo apt -y autoremove

check_status()
{
    if [ $? -eq 0 ]; then
        echo " ->${GREEN} SUCCESSFUL${RESET}"
    else
        echo " ->${RED} FAILED${RESET}"
    fi

}

# Essential packages
sudo apt install -y build-essential g++ cmake git libpq-dev synaptic \
                    gdebi alien checkinstall zip unzip
check_status

# Media I/O
sudo apt install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev \
                    libjasper-dev libopenexr-dev libgdal-dev
check_status

# Video I/O and player
sudo apt install -y vlc browser-plugin-vlc libdc1394-22-dev libavcodec-dev \
                    libavformat-dev libswscale-dev libtheora-dev libvorbis-dev \
                    libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev \
                    libopencore-amrwb-dev libv4l-dev libxine2-dev
check_status

# Other support packages
sudo apt install -y redshift redshift-gtk unity-tweak-tool gparted sshfs putty filezilla
check_status

# Web servers and database servers.
sudo apt install -y postgresql postgresql-contrib nginx pgweb
check_status

# Python related packages
sudo apt install -y python-dev python-tk python-numpy python3-dev python3-tk python3-numpy
check_status

# Installing Hindi font pack
sudo apt install -y fonts-indic
check_status