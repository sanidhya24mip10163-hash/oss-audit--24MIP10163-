#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sanidhya Tiwari | Roll: 24MIP10163
# Course: Open Source Software
# Chosen Software: Git

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        printf "%-10s  %-20s  %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Git Configuration Directory Check"
echo "---------------------------------"

# --- Git configg directory (~/.gitconfig or ~/.config/git) ---
if [ -f "$HOME/.gitconfig" ]; then
    PERMS=$(ls -l "$HOME/.gitconfig" | awk '{print $1, $3, $4}')
    echo "~/.gitconfig => $PERMS"
else
    echo "~/.gitconfig not found"
fi

#here is git config because you have to save changes after logging into the git else error
git config --global user.name "Sanidhya"
git config --global user.email "sanidhya.24mip10163@vitbhopal.ac.in"
