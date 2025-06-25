#!/bin/bash

read -p "Enter the day number (e.g. 5): " DAY
read -p "Enter the title: " TITLE

# Convert title to slug
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9\-]//g')
FILENAME="day-$DAY-$SLUG.md"

touch "$FILENAME"
echo "# Day $DAY: $TITLE" > "$FILENAME"
echo "" >> "$FILENAME"
echo "### Goals" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "### What I Did" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "### Challenges Encountered" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "### Solutions & Breakthroughs" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "### Next Steps" >> "$FILENAME"
echo "" >> "$FILENAME"
echo "### Self-Reflection / Notes" >> "$FILENAME"

flatpak-spawn --host code "$FILENAME"

