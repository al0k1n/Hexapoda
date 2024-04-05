#!/bin/bash
echo "█----------------------------------█"
echo "█	      Scans                █     FTP SSH"
echo "█----------------------------------█"
echo "█ 1.  Host disvovery		   █   6. Check FTP vulners"	
echo "█ 2.  Scan all TCP ports	   █   7. Are you FTP?"
echo "█ 3.  Scan 1000 popular TCP ports  █ 8. Check FTP version"
echo "█ 4.  Fast scan 		   █"
echo "█ 5.  Scan 100 popular UDP ports   █"
echo "█----------------------------------█"
echo ""
echo ""
echo -n "Enter the respective number from tool list that you want to use: "



read number
echo ""



SMB 		WEB	SMTP 		BruteForce		Searchsploit  		Report  
case $number in
	1)
		cd /scritps
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
