#!/bin/bash
echo -n  "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -v -p 0-65535 -A $Target > "scanall_data.txt"
echo -e "Check subfinder.txt"
