#!/bin/bash

# Directories
# DIR_A="code"
DIR_B="dse_database/our_ll"

# Extract filenames without extensions from directory B
files_in_b=$(ls "$DIR_B" | sed -E 's/\..+$//' | sort -u)

# Iterate over files in directory A
for file in "$DIR_A"/*; do
    # Extract the basename without extension
    base_name=$(basename "$file" | sed -E 's/\..+$//')
    
    # Check if the base name exists in B
    if ! echo "$files_in_b" | grep -q "^$base_name$"; then
        # echo "Not found: $file ($base_name)"
        echo "Deleting: $file"
        # rm "$file"
    fi
done