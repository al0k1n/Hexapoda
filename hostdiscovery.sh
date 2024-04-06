#!/bin/bash

if ! command -v netdiscover &> /dev/null; then
    echo "Error: netdiscover is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="hostdiscovery_out.txt"

echo "Example target: 0.0.0.0/24"
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
netdiscover -r $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
