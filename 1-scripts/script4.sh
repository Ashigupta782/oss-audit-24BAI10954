#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

# -------- FILE CHECK --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------- EMPTY FILE CHECK --------
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Retrying after 2 seconds..."
    sleep 2
    if [ ! -s "$LOGFILE" ]; then
        echo "Still empty. Exiting."
        exit 1
    fi
fi

# -------- READ FILE --------
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------"

# -------- LAST 5 MATCHES --------
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
