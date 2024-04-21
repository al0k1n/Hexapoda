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

if ! command -v enum4linux &> /dev/null; then
    echo "$LRED Error: enum4linux is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

output_directory="outputs"
output_file="enumsmb_out.txt"

echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "
read Target
echo -e "$LYELLOW Please wait...$NORMAL"
enum4linux $Target | tee "$output_directory/$output_file"
echo "                                      "
echo -e "$LGREEN Results is saved as enumsmb_out.txt$NORMAL"
echo "                                      "
