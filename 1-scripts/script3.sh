#!/bin/bash
# Script 3: Disk and Permission Auditor
# Description: Checks directory sizes and permissions

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# -------- PYTHON CONFIG CHECK --------
echo ""
echo "Checking Python configuration directory..."

PYTHON_CONFIG="/usr/lib/python3"

if [ -d "$PYTHON_CONFIG" ]; then
    PERMS=$(ls -ld $PYTHON_CONFIG | awk '{print $1, $3, $4}')
    echo "Python Config Dir: $PYTHON_CONFIG => $PERMS"
else
    echo "Python config directory not found."
fi
