#!/bin/bash

# Проверка наличия команды msfconsole
# Eсли команда msfconsole не найдена, выводится сообщение об ошибке и
# скрипт завершает свою работу с кодом выхода 1.
if ! command -v msfconsole &> /dev/null; then
    echo "Error: msfconsole is not installed. Please install it before using this script."
    exit 1
fi

output_directory="outputs"
output_file="sshversion_out.txt"

# Команда для использования Metasploit для получения информации о SSH
echo -n "Enter Target: "
read Target
echo "Exploiting SSH..."
msfconsole -q -x "use auxiliary/scanner/ssh/ssh_version; set RHOSTS $Target;  run; exit" | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
