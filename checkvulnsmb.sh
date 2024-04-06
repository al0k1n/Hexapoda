#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="checkvulnsmb_out.txt"

echo -n "[+] Enter Target : "
read Target
nmap --script smb-vuln* -p139,445 -T4 -Pn $Target | tee "$output_directory/$output_file"
echo -e "Data is saved as checkvulnsmb_out.txt"
