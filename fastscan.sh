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
output_file="fastscan_out.txt"

echo -n "[+] Enter Target : "

# Запрос на ввод
read Target
echo "Please wait..."

# Команда, которая запускает утилиту nmap для сканирования 100 популярных TCP портов
# Результат выводится на экран и записывается в директорию outputs с названием fastscan_out.txt
nmap -F $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "\e[32Results have been saved to $output_file.\e[0m"
