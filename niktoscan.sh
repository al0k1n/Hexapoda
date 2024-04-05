#!/bin/bash
if ! command -v nikto &> /dev/null; then
    echo "Error: nikto is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nikto -h $Target > "niktoscan_out.txt"
echo -e "Data is saved as niktoscan_out.txt"
