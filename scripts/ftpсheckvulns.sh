#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
nmap --script ftp-* -p21 $Target > "ftpсheckvulns_out.txt"
echo -e "Data is saved as ftpсheckvulns_out.txt"
