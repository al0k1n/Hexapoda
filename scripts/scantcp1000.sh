#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -sV -sC -O -T4 -n -Pn $Target > "scantcp1000_out.txt"
echo -e "Check scantcp1000_out.txt" 
