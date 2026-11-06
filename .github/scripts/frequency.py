import sys
from collections import Counter

def count_vowels(file_path):
    try:
        with open(file_path, 'r') as file:
            text = file.read().lower()

        vowels = 'aeiou'
        vowel_counts = Counter(char for char in text if char in vowels)

        for vowel in vowels:
            print(f"{vowel}: {vowel_counts[vowel]}")

    except FileNotFoundError:
        print("Error: File not found.")
        sys.exit(1)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python frequency.py <file_path>")
        sys.exit(1)

    count_vowels(sys.argv[1])