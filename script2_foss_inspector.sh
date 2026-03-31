#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sanidhya Tiwari | Roll: 24MIP10163
# Course: Open Source Software
# Chosen Software: Git

echo " FOSS Package Inspector — Git"

PACKAGE="git"

# Check installation
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    FOUND="$PACKAGE"
else
    echo "Git is NOT installed."
    echo "------------"
    exit 0
fi

echo "Detected installation: $FOUND"
echo ""

# Extract version
VERSION=$(dpkg -l | grep "^ii  $FOUND" | awk '{print $3}')

echo "Version        : $VERSION"
echo "Description    : Distributed version control system"
echo "License        : GPL v2"

echo ""
echo "-----------------"
echo " Philosophy Note"
echo "----------------"

# Case Statement
case $FOUND in
    git)
        echo "Git: A distributed version control system designed to track changes in source code and enable efficient collaboration among developers."
        ;;
    *)
        echo "Open-source tool."
        ;;
esac



