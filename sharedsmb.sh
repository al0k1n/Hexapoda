#!/bin/bash
output_directory="outputs"
output_file="sharedsmb_out.txt"

echo -n "[+] Enter Username : "
read User
echo -n "[+] Enter Password : "
read Password
echo -n "[+] Enter Domain (default workgroup): "
read Domain
echo -n "[+] Enter Target: "
read Target
echo "Please wait..."
smbmap -u $User -p $Password -d $Domain -H $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
