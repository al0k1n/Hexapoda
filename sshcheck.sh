#!/bin/bash
echo "After result, to terminate the process, press 'CTRL+C'."
echo -n "[+] Enter Target : "
read Target
nc -nv $Target 22
