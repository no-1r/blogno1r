#!/bin/bash

# Correct GitHub Pages path
CORRECT_PATH='/blogno1r/style.css'

# Find all HTML files and replace <link> href with the correct path
find . -name "*.html" | while read -r file; do
  echo "Fixing $file..."
  sed -i "s|<link rel=\"stylesheet\" href=\"[^\"]*\">|<link rel=\"stylesheet\" href=\"$CORRECT_PATH\">|" "$file"
done

echo "✅ All stylesheet paths fixed!"
