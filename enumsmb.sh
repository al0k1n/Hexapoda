#!/bin/bash
if ! command -v enum4linux &> /dev/null; then
    echo "Error: enum4linux is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="enumsmb_out.txt"

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
enum4linux $Target | tee "$output_directory/$output_file"
echo -e "Results is saved as enumsmb_out.txt"
