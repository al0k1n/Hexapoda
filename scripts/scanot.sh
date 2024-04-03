#!/bin/bash
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nmap -sV -sC -O -T4 -n -Pn $Target > "scanot_data.txt"
echo -e "Check subfinder.txt" 
