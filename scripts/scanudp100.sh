#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
nmap -sU -sV --version-intensity 0 -n -F -T4 $target > "scanudp100_out.txt"
echo -e "Data is saved as scanudp100_out.txt"
