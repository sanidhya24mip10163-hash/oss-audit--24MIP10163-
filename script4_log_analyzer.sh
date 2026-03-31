#!/bin/bash
# Script 4: Log File Analyzer
# Author: Sanidhya Tiwari | Roll: 24MIP10163

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# --- Check file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILR not found."
    exit 1
fi

# --- Check if file is empty ---
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. No data to analyze."
    exit 0
fi

# --- Read file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "---------------------"
echo " Log Analysis Result"
echo "----------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

#error - terminal get close again and again because while [ ! -s "$LOGFILE" ]; do ... infinite loop..
#hence used for loop.. if [ ! -s "$LOGFILE" ]...safe check
