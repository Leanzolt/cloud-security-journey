#!/bin/bash
# ----------------------------------------------------
# Script: Simple Directory Backup 📦
# Description: Automates the compression of a folder to a target destination.
# ----------------------------------------------------

echo "Enter the directory you want to back up:"
read dir

echo "Enter the path where to save the backup:"
read path

# Validate that both directories exist
if [[ -d "$dir" ]] && [[ -d "$path" ]]; then
    
    # Create the filename
    backup_name="$(basename "$dir").tar.gz"
    
    # Execute compression
    tar -cvzf "$path/$backup_name" -C "$(dirname "$dir")" "$(basename "$dir")"
    
    echo "✅ Success: Backup created at $path/$backup_name"
else
    echo "❌ Error: The source directory or destination path does not exist."
fi
