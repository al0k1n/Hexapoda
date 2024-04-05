#!/bin/bash
   # Проверка наличия searchsploit
if ! command -v msfconsole &> /dev/null; then
    echo "Error: msfconsole is not installed. Please install it before using this script."
    exit 1
fi
echo -n "[+] Enter Host: "
read Host
echo -n "[+] Enter Port: "
read Port
echo "Find users..."
msfconsole -q -x "use scanner/ssh/ssh_enumusers; set rhosts $Host; set RPORT $Port; set user_file /usr/share/wordlists/metasploit/default_users_for_services_unhash.txt; run; exit" > "sshlocalusers_out.txt"
echo -e "Data is saved as sshlocalusers_out.txt"
