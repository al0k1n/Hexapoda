                                              #!/bin/bash
echo "Example target: 0.0.0.0/24"
echo -n "[+] Enter Target : "
read Target
echo "Please wait..."
netdiscover -r $Target
