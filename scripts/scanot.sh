#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -sV -sC -O -T4 -n -Pn $Target > "scanot_data.txt"
echo -e "Check subfinder.txt" 
