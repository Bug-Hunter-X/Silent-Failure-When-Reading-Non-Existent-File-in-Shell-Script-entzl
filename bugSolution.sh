#!/bin/bash

# This script demonstrates a robust way to read a file and handle potential errors.

file_to_read="my_file.txt"

# Check if the file exists before attempting to read it
if [ -f "$file_to_read" ]; then
  # Read the file line by line and print each line
  while IFS= read -r line; do
    echo "$line"
  done < "$file_to_read"
else
  # Handle the case where the file does not exist
  echo "Error: File '$file_to_read' not found."
  exit 1  #Exit with a non-zero status code to indicate failure
fi