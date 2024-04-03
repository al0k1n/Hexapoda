#!/bin/bash
# Сканирование конкретно по порту 22
scan_ports() {
    echo -n "Enter Target: "
    read Target
    echo "Scanning ports..."
    nmap -p 22 --open -oG sshver.txt $Target
}

# Функция для использования Metasploit для получения информации о SSH
exploit_ssh() {
    echo -n "Enter Target: "
    read Target
    echo "Exploiting SSH..."
    msfconsole -q -x "use auxiliary/scanner/ssh/ssh_version; set RHOSTS $Target;  run; exit" > "sshver.txt"
    echo -e "Data is saved as sshver.txt"
}

# Вызов функций
scan_ports
exploit_ssh
