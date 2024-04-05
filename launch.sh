#!/bin/bash
cd /scritps
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
	1)
  		bash script.sh
    		;;

	2)

		;;
          
	3)

		;;
	
	4)

		;;

	5)

		;;

	6)

		;;

	7)
		
		;;

	8)
		
		;;

	9)
		
		;;

	10)
		
		;;
	11)
		
		;;
	
	12)
		
		;;

	13)
		
		;;

	14)
		
		;;

	15)
		
		;;


	16)
		
		;;

	17)
		
		;;

	18)
		
		;;

	19)
		
		;;

	
	20)
		
		;;

	21)

  		;;

        22) 

	       ;;
	23)

 		;;
   
	*)	
		echo "Please give valid choice!!!"
		;;

esac
