#!/bin/bash

echo "# Dev Journal" > README.md
echo "" >> README.md
echo "A daily log of my development journey, experiments, and setups." >> README.md
echo "" >> README.md
echo "## Entries" >> README.md
echo "" >> README.md

for file in day-*.md; do
  title=$(head -1 "$file" | sed 's/^# //')
  echo "- [$title]($file)" >> README.md
done
