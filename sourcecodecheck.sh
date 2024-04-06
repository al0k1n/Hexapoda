#!/bin/bash

output_directory="outputs"
output_file="sourcecodecheck_out.txt"

echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
curl -i -L $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
