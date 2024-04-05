#!/bin/bash
echo -n "[+] Enter Username : "
read User
echo -n "[+] Enter Password : "
read Password
echo -n "[+] Enter Domain (default workgroup): "
read Domain
echo -n "[+] Enter Target: "
read Target
echo "Please wait..."
smbmap -u $User -p $Password -d $Domain -H $Target | tee "sharedsmb_out.txt"
echo -e "Data is saved as sharedsmb_out.txt"
