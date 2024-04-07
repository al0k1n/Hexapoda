#!/bin/bash
echo "After result, to terminate the process, press 'CTRL+C'."
echo -n "[+] Enter Target : "

# Запрос на ввод 
read Target

# Команда использует nc (netcat) для установки TCP-соединения 
# с указанным целевым хостом ($Target) на порт 21
nc -nv $Target 21
