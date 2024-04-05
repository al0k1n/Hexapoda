#!/bin/bash
bash logomenu.sh
cd scripts
echo "█----------------------------------█-----------------------█----------------------------█"
echo "█	      Scans                █          FTP          █            SSH             █"
echo "█----------------------------------█-----------------------█----------------------------█"
echo "█ 1. Host disvovery		   █ 6. Check FTP vulners  █ 9. Are you SSH?            █"	
echo "█ 2. Scan all TCP ports	           █ 7. Are you FTP?       █ 10. Version                █"
echo "█ 3. Scan 1000 popular TCP ports   █ 8. Check FTP version  █ 11. Fingerprint            █"
echo "█ 4. Fast scan 		           █                       █ 12. Check Enum Users       █"
echo "█ 5. Scan 100 popular UDP ports    █                       █                            █"
echo "█----------------------------------█-----------------------█----------------------------█"
echo "█               WEB                █          SMB          █          Others            █"
echo "█----------------------------------█-----------------------█----------------------------█"
echo "█ 13. Check hidden directories     █ 18. SMB Information   █ 23. BruteForce             █"
echo "█ 14. Nikto scan                   █ 19. Version           █ 24. Search exploits        █"
echo "█ 15. Search subdomains            █ 20. Check vulners     █ 25. Audit report           █"
echo "█ 16. Check page source code       █ 21. EternalBlue       █                            █"
echo "█ 17. Server header check          █ 22. Shared drives     █                            █"
echo "█----------------------------------█-----------------------█----------------------------█"
echo ""
echo ""
echo ""
echo -n "Enter the respective number from tool list that you want to use: "
read number
echo ""
case $number in
	
 1)	bash hostdiscovery.sh
 	;;
	
 2)	bash scantcpall.sh
 	;;
 3)	bash scantcp1000.sh
 	;;
 4)	bash fastscan.sh
 	;;
 5)	bash scanudp100.sh
 	;;
 6)	bash ftpсheckvulns.sh
 	;;
 7)	bash ftpcheck.sh
 	;;
 8)	bash ftpversion.sh
 	;;
 9)	bash sshcheck.sh
 	;;
 10)	bash sshversion.sh
 	;;
 11)	bash sshfingerprint.sh
 	;;
 12)	bash sshlocalusers.sh
 	;;
 13)	bash dirsearch.sh
 	;;
 14)	bash niktoscan.sh
 	;;
 15)	bash subfinder.sh
 	;;
 16)	bash sourcecodecheck.sh
 	;;
 17)	bash headcheck.sh
 	;;
 18)	bash enumsmb.sh
 	;;
 19)	bash versionsmb.sh
 	;;
 20)	bash checkvulnsmb.sh
 	;;
 21)	bash eternalblue.sh
 	;;
 22)	bash sharedsmb.sh
 	;;
 23)	bash bruter.sh
 	;;
 24)	bash searchsploit.sh
 	;;
 25)	bash report.sh
 	;;
 *)	echo "Please give valid choice!!!"
 	;;
esac
bash launch.sh
