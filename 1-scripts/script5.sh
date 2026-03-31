#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Description: Generates a personalized philosophy statement

echo "Answer the following questions:"
echo ""

# -------- USER INPUT --------
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you (one word)? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_${USER}.txt"

# -------- GENERATE MANIFESTO --------
echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Author: $USER" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe that open source is about $FREEDOM. Tools like $TOOL show how collaboration can create powerful solutions." >> $OUTPUT

echo "In the future, I aim to build $BUILD and share it freely with the world, contributing to a community-driven ecosystem." >> $OUTPUT

echo "By embracing openness, we empower innovation and ensure knowledge remains accessible to all." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""

# -------- DISPLAY CONTENT --------
cat $OUTPUT
