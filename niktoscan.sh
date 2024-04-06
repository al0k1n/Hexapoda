#!/bin/bash
if ! command -v nikto &> /dev/null; then
    echo "Error: nikto is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="niktoscan_out.txt"

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nikto -h $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
