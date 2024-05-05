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

# Проверка наличия команды netdiscover
# Eсли команда netdiscover не найдена, выводится сообщение об ошибке и 
# скрипт завершает свою работу с кодом выхода 1.
if ! command -v nmap &> /dev/null; then
    echo -e "$LRED Error: nmap is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi



# Переменная, которая содержит имя файла для сохранения результатов
output_directory ="outputs"
output_file ="ftpvulns_out.txt"

echo -en "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter Target:$NORMAL "

# Запрос на ввод
read Target

# После получения целевого хоста скрипт использует nmap с опцией --script ftp-* для запуска всех скриптов, относящихся к FTP.
# Тем самым произойдёт проверка на наличие уязвимостей FTP на целевом хосте.
nmap --script ftp-* -p21 $Target | tee "$output_directory/$output_file"
echo "                                        "
echo -e "$LGREEN Results have been saved to $output_file.$NORMAL"
echo "                                        "
