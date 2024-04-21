#!/bin/bash
NORMAL='\033[0m'      #  ${NORMAL}    # все атрибуты по умолчанию
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}


   # Проверка наличия searchsploit
if ! command -v msfconsole &> /dev/null; then
    echo -e "$LRED Error: msfconsole is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

output_directory="outputs"
output_file="sshlocalusers_out.txt"

echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Host:$NORMAL "
read Host
echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Port:$NORMAL "
read Port
echo -e "$LYELLOW Find users...$NORMAL"
msfconsole -q -x "use scanner/ssh/ssh_enumusers; set rhosts $Host; set RPORT $Port; set user_file /usr/share/wordlists/metasploit/default_users_for_services_unhash.txt; run; exit" | tee "$output_directory/$output_file"
echo "                                        "
echo -e "$LGREEN Results have been saved to $output_file.$NORMAL"
echo "                                        "
