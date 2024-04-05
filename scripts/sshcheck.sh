!/bin/bash
# Проверка наличия ftp
if ! command -v ssh &> /dev/null; then
    echo "Error: searchsploit is not installed. Please install it before using this script."
    exit 1
fi

# Проверка наличия nmap
if ! command -v netcat &> /dev/null; then
    echo "Error: searchsploit is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
nc -nv $Target 22 > "sshcheck_out.txt"
echo -e "Data is saved as sshcheck_out.txt"
