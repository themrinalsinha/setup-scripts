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
        echo " ->${GREEN} SUCCESSFUL${RESET}"
    else
        echo " ->${RED} FAILED${RESET}"
    fi

}

essential_packages=(
    'build-essential'
    'g++'
    'git'
    'zip'
    'cmake'
    'gdebi'
    'alien'
    'unzip'
    'libpq-dev'
    'checkinstall'
)

utility_packages=(
    'sshfs'
)

web_db_server=(
    'nginx'
    'sqlite3'
    'postgresql'
    'postgresql-contrib'
)

python_packages=(
    'python-dev'
    'python-numpy'
    'python3-dev'
    'python3-numpy'
)

# UPDATING AND UPGRADING SYSTEM
sudo echo -e "\n${BOLD}${YELLOW}STARTING SYSTEM UPDATE${RESET}"
sudo apt update -y && sudo apt upgrade -y && \
sudo apt dist-upgrade -y && sudo apt autoremove -y
check_status

sudo echo -e "\n${BOLD}${YELLOW}INSTALLING ESSENTIAL PACKAGES${RESET}\n"
for pkg in "${essential_packages[@]}"; do
    echo "${YELLOW}Installing :${RESET} ${BOLD}$pkg${RESET}"
    sudo apt install "$pkg" -y &> /dev/null
    check_status
done

sudo echo -e "\n${BOLD}${YELLOW}INSTALLING UTILITY PACKAGES${RESET}\n"
for pkg in "${utility_packages[@]}"; do
    echo "${YELLOW}Installing :${RESET} ${BOLD}$pkg${RESET}"
    sudo apt install "$pkg" -y &> /dev/null
    check_status
done

sudo echo -e "\n${BOLD}${YELLOW}INSTALLING WEB & DATABASE SERVER PACKAGES${RESET}\n"
for pkg in "${web_db_server[@]}"; do
    echo "${YELLOW}Installing :${RESET} ${BOLD}$pkg${RESET}"
    sudo apt install "$pkg" -y &> /dev/null
    check_status
done

sudo echo -e "\n${BOLD}${YELLOW}INSTALLING PYTHON PACKAGES${RESET}\n"
for pkg in "${python_packages[@]}"; do
    echo "${YELLOW}Installing :${RESET} ${BOLD}$pkg${RESET}"
    sudo apt install "$pkg" -y &> /dev/null
    check_status
done