#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
nmap -A -v $Target -p21 > "ftpversion_out.txt"
echo -e "Data is saved as ftpversion_out.txt"
