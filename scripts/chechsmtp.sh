#!/bin/bash
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
nc -vn $Target 25 > "chechsmtp_out.txt"
echo -e "Data is saved as chechsmtp_out.txt"
