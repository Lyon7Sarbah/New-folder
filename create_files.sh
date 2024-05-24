#!/bin/bash

# Prompt for directory name
read -p "Enter the name of the directory: " directory_name

# Create the directory
mkdir "$directory_name"

# Change to the directory
cd "$directory_name" || exit

# Create HTML, CSS, and JS files
touch index.html styles.css script.js

echo "Directory '$directory_name' created with 3 files: index.html, styles.css, and script.js"
