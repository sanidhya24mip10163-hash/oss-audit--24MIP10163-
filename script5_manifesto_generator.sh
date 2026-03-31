#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sanidhya Tiwari | Roll: 24MIP10163

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="mymenifesto.txt"

echo "On $DATE, I use $TOOL. Freedom means $FREEDOM to me. I want to build $BUILD and share it freely." > "$OUTPUT"

# You can create an alias like: alias manifesto="bash script5.sh" to run this quickly

echo ""
echo "Manifesto saved to: $OUTPUT"
echo ""
cat "$OUTPUT"

#custom output 

#also have loation wherre this file gets save

