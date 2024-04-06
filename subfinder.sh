#!/bin/bash
if ! command -v subfinder &> /dev/null; then
    echo "Error: subfinder is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="subfinder._out.txt"

echo -n "Enter the domain (example.com): " 
read domain	
echo "Starting..." 
subfinder -d $domain -o "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
