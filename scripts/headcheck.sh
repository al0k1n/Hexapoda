#!/bin/bash
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
curl -I $Target > "headcheck_out.txt"
echo -e "Data is saved as headcheck_out.txt"
