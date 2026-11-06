#!/bin/bash

echo "Starting Vowel Frequency Analyzer..."

FILE="${FILE:-data.txt}"

GITHUB_USER="${GITHUB_USER:-unknown}"

FREQ_RESULT=$(python3 .github/scripts/frequency.py "$FILE")

bash .github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Vowel Frequency Analysis completed!"