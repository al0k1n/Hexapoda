#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="fastscan_out.txt"

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -F $Target | tee "$output_directory/$output_file"
echo "Results have been saved to $output_file."
