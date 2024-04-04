#!/bin/bash
# Проверка наличия ftp
if ! command -v ftp &> /dev/null; then
    echo "Error: searchsploit is not installed. Please install it before using this script."
    exit 1
fi

# Проверка наличия nmap
if ! command -v nmap &> /dev/null; then
    echo "Error: searchsploit is not installed. Please install it before using this script."
    exit 1
fi

if ! command -v nmap &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
nmap --script ftp-* -p21 $Target > "ftpсheckvulns_out.txt"
echo -e "Data is saved as ftpсheckvulns_out.txt"
