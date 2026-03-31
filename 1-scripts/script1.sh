#!/bin/bash
# Script 1: System Identity Report
# Author: Ashi Gupta
# Course: Open Source Software
# Description: Displays basic Linux system information in a formatted way

# -------- VARIABLES --------
STUDENT_NAME="Ashi Gupta"
SOFTWARE_CHOICE="Python Programming Language"

# -------- SYSTEM INFO --------
KERNEL=$(uname -r)                      # Kernel version
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)                    # Current logged-in user
HOME_DIR=$HOME                         # Home directory
UPTIME=$(uptime -p)                    # System uptime
CURRENT_DATE=$(date)                   # Current date and time

# -------- DISPLAY --------
echo "=============================================="
echo "   Open Source Audit — "Ashi Gupta"
echo "=============================================="
echo "Software Chosen : "Python Programming Language"

echo ""
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL
echo "Logged-in User     : $USER_NAME"
echo "Home Directory     : $HOME_DIR"
echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : "31 March 2026"
echo ""
echo "License Info       : Linux is typically licensed under the GNU GPL (General Public License)"
echo "=============================================="
