#!/bin/bash
#
# Author:           Björn Benouarets
# Github:           https://github.com/bbenouarets/script-utils
# Version:          0.1 (alpha)
#
# Description:      This script is used to clear the temporary $FOLDER
#
# Usage:            ./clear-tmp.sh

# VARIABLES:
FOLDER="/home/baba/test"
LOG_FILE="/var/log/clear-script/clear-tmp.log"

# Define colors
ERROR="\033[1;31m"
SUCCESS="\033[1;32m"
WARNING="\033[1;33m"
INFO="\033[1;34m"
RESET="\033[0m"

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
    echo -e "[-] ${ERROR}This script must be run as root!${RESET}" 1>&2
    exit 1
fi

# Check if the $FOLDER exists
if [ ! -d "$FOLDER" ]; then
    echo -e "[-] ${ERROR}The folder $FOLDER does not exist!${RESET}" >> $LOG_FILE 2>&1
    exit 1
else
    echo -e "[+] ${SUCCESS}The folder $FOLDER exists!${RESET}" >> $LOG_FILE 2>&1
fi

# Check if the $FOLDER is empty
if [ "$(ls -A $FOLDER)" ]; then
    echo -e "[+] ${INFO}The folder $FOLDER is not empty!${RESET}" >> $LOG_FILE 2>&1
    echo -e "[+] ${INFO}Removing all files in $FOLDER...${RESET}" >> $LOG_FILE 2>&1
    rm -rf $FOLDER/* >> $LOG_FILE 2>&1
    echo -e "[+] ${SUCCESS}All files in $FOLDER have been removed!${RESET}" >> $LOG_FILE 2>&1
else
    echo -e "[+] ${INFO}The folder $FOLDER is empty!${RESET}" >> $LOG_FILE 2>&1
fi

echo -e "[+] ${SUCCESS}The folder $FOLDER has been cleared!${RESET}" >> $LOG_FILE 2>&1