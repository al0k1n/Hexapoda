#!/bin/bash

# Проверка наличия команды netdiscover
# Eсли команда netdiscover не найдена, выводится сообщение об ошибке и
# скрипт завершает свою работу с кодом выхода 1.
if ! command -v netdiscover &> /dev/null; then
    echo "Error: netdiscover is not installed. Please install it before using this script."
    exit 1
fi

# Переменная, которая содержит имя директории для сохранения результатов
output_directory="outputs"

# Переменная, которая содержит имя файла для сохранения результатов
output_file="hostdiscovery_out.txt"

echo "Example target: 0.0.0.0/24"
echo -n "[+] Enter Target : "
# Запрос на ввод
read Target
echo "Please wait..."

# Команда, которая запускает утилиту netdiscover для поиска хостов в заданной сети
# Результат выводится на экран и записывается в директорию outputs с названием hostdiscovery_out.txt

netdiscover -r $Target | tee "$output_directory/$output_file"
echo "                                        "
echo "Results have been saved to $output_file."
echo "                                        "
