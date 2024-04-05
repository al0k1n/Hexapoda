#!/bin/bash
if ! command -v msfconsole &> /dev/null; then
    echo "Error: msfconsole is not installed. Please install it before using this script."
    exit 1
fi

echo -n "[+] Enter Target : "
read Target
msfconsole -q -x "use scanner/smb/smb_version; set RHOSTS $Target; run; exit" | tee "versionsmb_out.txt"
echo -e "Data is saved as versionsmb_out.txt"
