#!/bin/bash

# Directories
DIR_A="code"
# DIR_B="dse_database/our_ll"
DIR_B="gen_ll"
DIR_C="combine2"

# Create directory C if it doesn't exist
mkdir -p "$DIR_C"

# Extract unique filenames without extensions from both directories A and B
files=$(ls "$DIR_A" "$DIR_B" 2>/dev/null | sed -E 's/\..+$//' | sort -u)

# Iterate over the unique filenames
for base_name in $files; do
    # Create a subdirectory in C with the base name
    sub_dir="$DIR_C/$base_name"
    mkdir -p "$sub_dir"
    
    # Move files from A matching the base name to the subdirectory
    for file_a in "$DIR_A/$base_name"*; do
        [ -f "$file_a" ] && cp "$file_a" "$sub_dir"
    done

    # Move files from B matching the base name to the subdirectory
    for file_b in "$DIR_B/$base_name"*; do
        [ -f "$file_b" ] && cp "$file_b" "$sub_dir"
    done
done