#!/bin/bash

if ! command -v netcat &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nc -vn $Target 25 > "chechsmtp_out.txt"
echo -e "Data is saved as chechsmtp_out.txt"
