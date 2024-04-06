#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="scantcpall_out.txt"

echo -n "[+] Enter Target (0.0.0.0/24) : "
read Target
echo "Please wait..."
nmap $Target -p- -v -sV --reason | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
