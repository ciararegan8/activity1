#!/bin/bash

FREQ_RESULT="$1"
GITHUB_USER="$2"
TIMESTAMP=$(date)

echo -e "\n## Vowel Frequency Analysis\n" >> README.md
echo "Vowel Frequencies:" >> README.md
echo "$FREQ_RESULT" >> README.md
echo "" >> README.md
echo "Contributor: $GITHUB_USER" >> README.md
echo "Timestamp: $TIMESTAMP" >> README.md

git config user.name "github-actions"
git config user.email "github-actions@users.noreply.github.com"

git add README.md
git commit -m "Update README with vowel frequency analysis"

git push