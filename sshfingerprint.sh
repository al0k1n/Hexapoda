#!/bin/bash
echo "After result, to terminate the process, press 'CTRL+C'."
echo -n "[+] Enter Host: "
read Target
echo "Find users..."
ssh root@$Target -v
