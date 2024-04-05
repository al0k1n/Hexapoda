#!/bin/bash
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
curl -i -L $Target > "sourcecodecheck_out.txt"
echo -e "Data is saved as sourcecodecheck_out.txt"
