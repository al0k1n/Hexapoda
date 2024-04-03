#!/bin/bash
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -F $Target > "fastscan.txt"
echo -e "Data is saved as fastscan.txt"
