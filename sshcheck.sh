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

echo -e "$LYELLOW After result, to terminate the process, press 'CTRL+C'.$NORMAL"
echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "
read Target
nc -nv $Target 22
