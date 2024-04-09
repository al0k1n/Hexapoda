#!/bin/bash

# Цветом текста (жирным) (bold) :
DEF='\033[0;39m'       #  ${DEF}
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}

# Цветом текста (жирным) (bold) :
DEF='\033[0;39m'       #  ${DEF}
DGRAY='\033[1;30m'     #  ${DGRAY}
LRED='\033[1;31m'       #  ${LRED}
LGREEN='\033[1;32m'     #  ${LGREEN}
LYELLOW='\033[1;33m'     #  ${LYELLOW}
LBLUE='\033[1;34m'     #  ${LBLUE}
LMAGENTA='\033[1;35m'   #  ${LMAGENTA}
LCYAN='\033[1;36m'     #  ${LCYAN}
WHITE='\033[1;37m'     #  ${WHITE}

if ! command -v nmap &> /dev/null; then
    echo "Error: nmap is not installed. Please install it before using this script."
    exit 1
fi
# Переменная, которая содержит имя директории для сохранения результатов
output_directory="outputs"

# Переменная, которая содержит имя файла для сохранения результатов
output_file="fastscan_out.txt"

echo -en "${LYELLOW} ${LGREEN}[+]${NORMAL}\n Enter Target : "

# Запрос на ввод
read Target
echo "Please wait..."

# Команда, которая запускает утилиту nmap для сканирования 100 популярных TCP портов
# Результат выводится на экран и записывается в директорию outputs с названием fastscan_out.txt
nmap -F $Target | tee "$output_directory/$output_file"
echo "                                        "
echo -en "${LYELLOW} ${LGREEN}Results have been saved to $output_file.${NORMAL}\n"
