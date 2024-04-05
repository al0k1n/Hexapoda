#!/bin/bash

# Проверка наличия утилиты dirsearch
if ! command -v dirsearch &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

# Директория для сохранения результатов
output_directory="outputs"
# Имя файла для сохранения результатов
output_file="dirsearch_out.txt"

# Проверка наличия поддиректории outputs
if [ ! -d "outputs" ]; then
    echo "Error: The 'outputs' directory does not exist in the Hexapoda directory."
    echo "Please make sure the 'outputs' directory exists in the Hexapoda directory before running this script."
    exit 1
fi

# Запрос цели для сканирования
read -p "Enter the target URL (http://example.com): " target_url

# Запуск dirsearch для указанной цели и сохранение результатов в указанную директорию
dirsearch -u "$target_url" -o "$output_directory/$output_file"

echo "Search results have been saved to $output_file. It is located in the Hexapoda/scripts/outputs directory"
