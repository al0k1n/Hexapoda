#!/bin/bash
echo -n "[+] Enter Host: "
read Target
echo "Find users..."
ssh root@$Target -v > "sshfingerprint_out.txt"
echo -e "Data is saved as sshfingerprint_out.txt"
