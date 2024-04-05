#!/bin/bash
echo -e "Data is saved as ftpcheck_out.txt"
echo "To terminate the process, press 'CTRL+C'."
echo -n "[+] Enter Target : "
read Target
nc -nv $Target 21 > "ftpcheck_out.txt"
