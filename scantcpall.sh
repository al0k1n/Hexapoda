#!/bin/bash

# Проверка наличия команды nmap
# Eсли команда nmap не найдена, выводится сообщение об ошибке и
# скрипт завершает свою работу с кодом выхода 1.
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

# Переменная, которая содержит имя директории для сохранения результатов
output_directory="outputs"

# Переменная, которая содержит имя файла для сохранения результатов
output_file="scantcpall_out.txt"

echo -n "[+] Enter Target (0.0.0.0/24) : "

# Запрос на ввод
read Target
echo "Please wait..."

# Команда выполняет сканирование всех TCP портов на целевом хосте
nmap $Target -p- -v -sV --reason | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
