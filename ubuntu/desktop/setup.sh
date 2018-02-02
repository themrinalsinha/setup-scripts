#!/bin/bash

# DEFINING COLORS
tput clear
RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
RESET=`tput sgr0`
BOLD=`tput bold`

# CHECK IF ERROR.
check_status()
{
    if [ $? -eq 0 ]; then
        echo "  ->${GREEN} SUCCESSFUL${RESET}"
    else
        echo "  ->${RED} FAILED${RESET}"
    fi

}

# UPDATING AND UPGRADING SYSTEM
sudo echo -e "\n${BOLD}${YELLOW}STARTING SYSTEM UPDATE${RESET}"
sudo xterm -e 'apt update -y && apt upgrade -y && apt dist-upgrade -y && apt autoremove -y'
check_status

