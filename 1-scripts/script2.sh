#!/bin/bash
# Script 2: FOSS Package Inspector
# Description: Checks if Python is installed and prints details

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "------------------------------------"

# -------- CHECK INSTALLATION --------
if command -v $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed."

    echo ""
    echo "Version Information:"
    $PACKAGE --version

    echo ""
    echo "Binary Location:"
    which $PACKAGE

    echo ""
    echo "Additional Package Info (Debian-based systems):"
    dpkg -l | grep $PACKAGE 2>/dev/null

else
    echo "$PACKAGE is NOT installed."
fi

# -------- CASE STATEMENT --------
echo ""
echo "Philosophy Note:"
case $PACKAGE in
    python3)
        echo "Python: A language designed for readability and simplicity, empowering open innovation."
        ;;
    git)
        echo "Git: Distributed version control that revolutionized collaboration."
        ;;
    vlc)
        echo "VLC: Media freedom — plays anything without restrictions."
        ;;
    apache2)
        echo "Apache: Backbone of the open web."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
