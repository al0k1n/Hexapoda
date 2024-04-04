#!/bin/bash

if ! command -v netdiscover &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo "Example target: 0.0.0.0/24"
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
netdiscover -r $Target
