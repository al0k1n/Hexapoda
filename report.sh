#!/bin/bash
NORMAL='\033[0m'      #  ${NORMAL}    # все атрибуты по умолчанию
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}


# Проверка наличия директории outputs
if [ ! -d "outputs" ]; then
    echo -e "$LRED Error: The 'outputs' directory does not exist.$NORMAL"
    echo -e "$LRED Please make sure the 'outputs' directory exists before running this script.$NORMAL"
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

echo -e "$LGREEN Reports have been collected and archived in $report_archive.$NORMAL"
echo -e "$LGREEN Path: Hexapoda/scripts/outputs.$NORMAL"
