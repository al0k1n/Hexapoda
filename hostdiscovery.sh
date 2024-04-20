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
# Проверка наличия команды netdiscover
# Eсли команда netdiscover не найдена, выводится сообщение об ошибке и
# скрипт завершает свою работу с кодом выхода 1.
if ! command -v netdiscover &> /dev/null; then
    echo -e "$LRED Error: netdiscover is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi

# Переменная, которая содержит имя директории для сохранения результатов
output_directory="outputs"

# Переменная, которая содержит имя файла для сохранения результатов
output_file="hostdiscovery_out.txt"

echo -e "$WHITE Example target:$NORMAL$LYELLOW 0.0.0.0/24$NORMAL"
echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "
# Запрос на ввод
read Target
echo -e "$LYELLOW Please wait...$NORMAL"

# Команда, которая запускает утилиту netdiscover для поиска хостов в заданной сети
# Результат выводится на экран и записывается в директорию outputs с названием hostdiscovery_out.txt

netdiscover -r $Target | tee "$output_directory/$output_file"
echo "                                        "
echo -e "$LGREEN Results have been saved to $output_file. $NORMAL"
echo "                                        "
