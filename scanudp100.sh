#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="scanudp100_out.txt"

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -sU -sV --version-intensity 0 -n -F -T4 $target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
