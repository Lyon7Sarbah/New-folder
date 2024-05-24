#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Prompt for username
read -p "Enter username for the new user: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User $username already exists"
    exit 1
fi

# Prompt for password
read -sp "Enter password for the new user: " password
echo

# Create the user with the specified username and password
useradd -m -s /bin/bash "$username"

# Set the password for the new user
echo "$username:$password" | chpasswd

echo "User $username created successfully"
