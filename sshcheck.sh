!/bin/bash
echo -n "[+] Enter Target : "
read Target
nc -nv $Target 22 > "sshcheck_out.txt"
echo -e "Data is saved as sshcheck_out.txt"
