#!/bin/bash
NORMAL='\033[0m'      #  ${NORMAL}    # все атрибуты по умолчанию
DEF='\033[0;39m'       #  ${DEF}
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}
green='\e[1;32m' # ${green}

if ! command -v nmap &> /dev/null; then
    echo "$LRED Error: nmap is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

output_directory="outputs"
output_file="checkvulnsmb_out.txt"

echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "
read Target
nmap --script smb-vuln* -p139,445 -T4 -Pn $Target | tee "$output_directory/$output_file"
echo "                                        "
echo -e "$LGREEN Data is saved as checkvulnsmb_out.txt$NORMAL"
echo "                                        "
