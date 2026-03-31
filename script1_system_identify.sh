#!/bin/bash
# Script 1: System Identity Report
# Author: Sanidhya Tiwari | Roll: 24MIP10163
# Course: Open Source Software
# Chosen Software: Git

# Variables
STUDENT_NAME="Sanidhya Tiwari"
SOFTWARE_CHOICE="Git"
ROLL_NO="24MIP10163"

# System Info
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_NOW=$(date)

# --- Display ---
echo "========================================="
echo " Open Source Audit — $STUDENT_NAME"
echo " Software Chosen: $SOFTWARE_CHOICE"
echo " Roll Number: $ROLL_NO"
echo "========================================="
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $DATE_NOW"
echo ""
echo "License Info : This Linux system is based on open-source licenses such as GPLv2."
echo "========================================="



