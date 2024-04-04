#!/bin/bash
# Вывод сохранён в файл dirsiearch_output.txt, он находится по пути Hexapoda/outputs
    echo -e "Output is saved to the file dirsearch_output.txt, it is located in the Hexapoda/outputs directory"
# Проверка наличия утилиты dirsearch
if ! command -v dirsearch &> /dev/null; then
    echo "Error: dirsearch is not installed. Please install it before using this script."
    exit 1
fi

# Директория для сохранения результатов
output_directory="outputs"
# Имя файла для сохранения результатов
output_file="dirsearch_out.txt"

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

# Запрос цели для сканирования
read -p "Enter the target URL (http://example.com): " target_url

# Запуск dirsearch для указанной цели и сохранение результатов в указанную директорию
dirsearch -u "$target_url" -o "$output_directory/$output_file"
