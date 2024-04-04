#!/bin/bash

# Проверка наличия searchsploit
if ! command -v searchsploit &> /dev/null; then
    echo "Error: searchsploit is not installed. Please install it before using this script."
    exit 1
fi

# Проверка текущей директории
if [[ ! $(pwd) =~ "/Hexapoda" ]]; then
    echo "Error: This script must be run from within the Hexapoda directory."
    exit 1
fi

# Проверка наличия поддиректории outputs
if [ ! -d "outputs" ]; then
    echo "Error: The 'outputs' directory does not exist in the Hexapoda directory."
    echo "Please make sure the 'outputs' directory exists in the Hexapoda directory before running this script."
    exit 1
fi

# Проверка наличия поддиректории outputs
if [ ! -d "scripts" ]; then
    echo "Error: The 'scripts' directory does not exist in the Hexapoda directory."
    echo "Please make sure the 'scripts' directory exists in the Hexapoda directory before running this script."
    exit 1
fi

echo "Never limit yourself to searchsploit. Also, search in Google for 'program_name version exploit'."
read -p "Enter the keyword to search for vulnerabilities: " keyword

# Имя файла для сохранения результатов
output_file="searchsploit_out.txt"

# Поиск уязвимостей с использованием searchsploit и сохранение результатов в файл
searchsploit "$keyword" > "$output_file"

# Вывод дополнительной информации
echo "Search results have been saved to $output_file."