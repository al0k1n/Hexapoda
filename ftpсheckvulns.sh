#!/bin/bash

# Проверка наличия команды netdiscover
# Eсли команда netdiscover не найдена, выводится сообщение об ошибке и 
# скрипт завершает свою работу с кодом выхода 1.
if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi

# Переменная, которая содержит имя директории для сохранения результатов
output_directory="outputs"

# Переменная, которая содержит имя файла для сохранения результатов
output_file="ftpvulns_out.txt"

echo -n "[+] Enter Target : "

# Запрос на ввод
read Target

# После получения целевого хоста скрипт использует nmap с опцией --script ftp-* для запуска всех скриптов, относящихся к FTP.
# Тем самым произойдёт проверка на наличие уязвимостей FTP на целевом хосте.
nmap --script ftp-* -p21 $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
