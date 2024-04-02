#!/bin/bash
echo -n  "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -v -p 0-65535 -A $Target > "scanallports_data.txt"
echo -e "Data is saved as scanallports_data.txt"
