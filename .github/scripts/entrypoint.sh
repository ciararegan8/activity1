#!/bin/bash

set -e

echo "Starting Vowel Frequency Analyzer..."

WORKSPACE="${GITHUB_WORKSPACE:-/app}"

FILE="${FILE:-data.txt}"

if [[ "$FILE" != /* ]]; then
    FILE="$WORKSPACE/$FILE"
fi

GITHUB_USER="${GITHUB_USER:-unknown}"

FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "$FILE")

cd "$WORKSPACE"

bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Vowel Frequency Analysis completed!"