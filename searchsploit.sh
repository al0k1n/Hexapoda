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


# Проверка наличия searchsploit
if ! command -v searchsploit &> /dev/null; then
    echo -en "$LRED Error: searchsploit is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

# Проверка наличия поддиректории outputs
if [ ! -d "outputs" ]; then
    echo -en "$LRED Error: The 'outputs' directory does not exist in the Hexapoda directory.$NORMAL"
    echo -en "$LRED Please make sure the 'outputs' directory exists in the Hexapoda directory before running this script.$NORMAL"
    exit 1
fi

# Директория для сохранения результатов
output_directory="outputs"
# Имя файла для сохранения результатов
output_file="searchsploit_out.txt"

echo -en "$LGREEN Never limit yourself to searchsploit. Also, search in Google for 'program_name version exploit'.$NORMAL"
echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter the keyword to search for vulnerabilities: $NORMAL" 
read keyword

# Поиск уязвимостей с использованием searchsploit и сохранение результатов в файл
searchsploit "$keyword" | tee "$output_directory/$output_file"

echo -en "$LGREEN Search results have been saved to $output_file.$NORMAL"
