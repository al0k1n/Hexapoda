#!/bin/bash
if ! command -v enum4linux &> /dev/null; then
    echo "Error: enum4linux is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
enum4linux $Target > "enumsmb_out.txt"
echo -e "Data is saved as enumsmb_out.txt"
