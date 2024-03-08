#!/bin/bash

# Loop through each file and add to the staging area
for file in * .*
do
    # Check if the file is not ignored and is not a directory
    if [[ ! "$file" =~ ^(node_modules|*.log|*.sh|*.md|\.$)$ && ! -d "$file" ]]; then
        # Add the file to the staging area
        git add "$file"

        # Commit the changes with a commit message
        git commit -m "$file"
    fi
done