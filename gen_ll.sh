#!/bin/bash

# Check if source and output directories are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_directory> <output_directory>"
    exit 1
fi

SOURCE_DIR="$1"
OUTPUT_DIR="$2"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory '$SOURCE_DIR' does not exist."
    exit 1
fi

# Create the output directory if it does not exist
mkdir -p "$OUTPUT_DIR"

# Iterate through all .c files in the source directory
for C_FILE in "$SOURCE_DIR"/*.c; do
    if [ -f "$C_FILE" ]; then
        # Extract the filename without the extension
        FILE_NAME=$(basename "$C_FILE" .c)

        # Output .ll file path
        OUTPUT_FILE="$OUTPUT_DIR/$FILE_NAME.ll"

        # Run clang to generate the .ll file
        clang -emit-llvm -fno-discard-value-names -S -c "$C_FILE" -o "$OUTPUT_FILE"

        # Check if clang succeeded
        if [ $? -eq 0 ]; then
            echo "Generated LLVM IR for: $C_FILE -> $OUTPUT_FILE"
        else
            echo "Error processing: $C_FILE"
        fi
    fi
done

echo "LLVM IR generation completed. Output files are in '$OUTPUT_DIR'."

