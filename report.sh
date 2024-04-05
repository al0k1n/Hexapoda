#!/bin/bash

# Проверка наличия директории outputs
if [ ! -d "outputs" ]; then
    echo "Error: The 'outputs' directory does not exist."
    echo "Please make sure the 'outputs' directory exists before running this script."
    exit 1
fi

# Создание временной директории для работы со скриптом
temp_dir=$(mktemp -d)

# Копирование отчетов из директории outputs во временную директорию
cp -r outputs/* "$temp_dir"
cd outputs

# Архивация временной директории с отчетами
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
report_archive="reports_$timestamp.tar.gz"
tar -czf "$report_archive" -C "$temp_dir" .

# Удаление временной директории
rm -rf "$temp_dir"

echo "Reports have been collected and archived in $report_archive."
echo "Path: Hexapoda/scripts/outputs"
