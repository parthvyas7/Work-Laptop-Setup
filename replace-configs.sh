#!/bin/bash

# List of base filenames in current directory (without dot prefix)
files=("bashrc" "bash_aliases" "vimrc")

# Loop through each file
for file in "${files[@]}"; do
    src="./$file"
    dest="$HOME/.$file"

    if [ -f "$src" ]; then
        echo "Replacing $dest with $src"
        cp -f "$src" "$dest"
    else
        echo "Warning: $src not found, skipping."
    fi
done

echo "Done!"

