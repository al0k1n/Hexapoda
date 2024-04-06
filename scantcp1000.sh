#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="scantcp1000_out.txt"

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -sV -sC -O -T4 -n -Pn $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
