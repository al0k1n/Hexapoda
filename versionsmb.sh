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


if ! command -v msfconsole &> /dev/null; then
    echo -e "$LRED Error: msfconsole is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "
read Target
msfconsole -q -x "use scanner/smb/smb_version; set RHOSTS $Target; run; exit" | tee "versionsmb_out.txt"
echo -e "$LGREEN Data is saved as versionsmb_out.txt$NORMAL"
