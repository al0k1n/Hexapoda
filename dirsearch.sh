#!/bin/bash
NORMAL='\033[0m'      #  ${NORMAL}    # все атрибуты по умолчанию
DEF='\033[0;39m'       #  ${DEF}
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}
green='\e[1;32m' # ${green}

# Проверка наличия утилиты dirsearch
if ! command -v dirsearch &> /dev/null; then
    echo -e "$LRED Error: dirsearch is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

# Директория для сохранения результатов
output_directory="outputs"
# Имя файла для сохранения результатов
output_file="dirsearch_out.txt"

# Проверка наличия поддиректории outputs
if [ ! -d "outputs" ]; then
    echo -e "$LRED Error: The 'outputs' directory does not exist in the Hexapoda directory.$NORMAL"
    echo -e "$LRED Please make sure the 'outputs' directory exists in the Hexapoda directory before running this script.$NORMAL"
    exit 1
fi

# Запрос цели для сканирования
echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target URL$NORMAL$LYELLOW (http://example.com)$NORMAL$WHITE: $NORMAL" 
read target_url

# Запуск dirsearch для указанной цели и сохранение результатов в указанную директорию
dirsearch -u "$target_url" -o "$output_directory/$output_file"

echo -e "$LGREEN Results have been saved to $output_file. It is located in the Hexapoda/scripts/outputs directory$NORMAL"
