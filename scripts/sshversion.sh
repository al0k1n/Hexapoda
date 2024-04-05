#!/bin/bash
if ! command -v msfconsole &> /dev/null; then
    echo "Error: msfconsole is not installed. Please install it before using this script."
    exit 1
fi

scan_ports() {
    echo -n "Enter Target: "
    read Target
    echo "Scanning ports..."
    nmap -p 22 --open $Target
}

# Функция для использования Metasploit для получения информации о SSH
exploit_ssh() {
    echo -n "Enter Target: "
    read Target
    echo "Exploiting SSH..."
    msfconsole -q -x "use auxiliary/scanner/ssh/ssh_version; set RHOSTS $Target;  run; exit" > "sshversion_out.txt"
    echo -e "Check sshversion_out.txt" 
}

# Вызов функций
scan_ports
exploit_ssh
