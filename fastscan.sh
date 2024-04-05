#!/bin/bash

if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -F $Target > "fastscan_out.txt"
echo -e "Check fastscan_out.txt" 
