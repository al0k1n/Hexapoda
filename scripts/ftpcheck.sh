#!/bin/bash
if ! command -v netcat &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

echo -e "Data is saved as ftpcheck_out.txt"
echo "To terminate the process, press 'CTRL+C'."
echo -n "[+] Enter Target : "
read Target
nc -nv $Target 21 > "ftpcheck_out.txt"
