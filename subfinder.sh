#!/bin/bash
if ! command -v subfinder &> /dev/null; then
    echo "Error: subfinder is not installed. Please install it before using this script."
    exit 1
fi

echo -n "Enter the domain: " 
read domain	
echo "Starting..." 
subfinder -d $domain -o subfinder_out.txt
echo "Check subfinder_out.txt" 
