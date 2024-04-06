#!/bin/bash
   # Проверка наличия searchsploit
if ! command -v msfconsole &> /dev/null; then
    echo "Error: msfconsole is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="sshlocalusers_out.txt"

echo -n "[+] Enter Host: "
read Host
echo -n "[+] Enter Port: "
read Port
echo "Find users..."
msfconsole -q -x "use scanner/ssh/ssh_enumusers; set rhosts $Host; set RPORT $Port; set user_file /usr/share/wordlists/metasploit/default_users_for_services_unhash.txt; run; exit" | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
