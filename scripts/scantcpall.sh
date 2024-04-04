#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
nmap $Target -p- -v -sV --reason > "scantcpall_out.txt"
echo -e "Data is saved as scantcpall_out.txt"
