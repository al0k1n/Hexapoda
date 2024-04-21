#!/bin/bash
# Цветом текста (жирным) (bold) :
NORMAL='\033[0m'      #  ${NORMAL}    # все атрибуты по умолчанию
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}

if ! command -v nmap &> /dev/null; then
    echo "$LRED Error: nmap is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi
# Переменная, которая содержит имя директории для сохранения результатов
output_directory="outputs"

# Переменная, которая содержит имя файла для сохранения результатов
output_file="fastscan_out.txt"

echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "

# Запрос на ввод
read Target
echo -e "$LYELLOW Please wait...$NORMAL"

# Команда, которая запускает утилиту nmap для сканирования 100 популярных TCP портов
# Результат выводится на экран и записывается в директорию outputs с названием fastscan_out.txt
nmap -F $Target | tee "$output_directory/$output_file"
echo "                                        "
echo -e "$LGREEN Results have been saved to $output_file.${NORMAL}"
