#!/bin/bash
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. "$scriptDir/logomenu.sh"
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

BGBLACK='\033[40m'     #  ${BGBLACK}
BGRED='\033[41m'       #  ${BGRED}
BGGREEN='\033[42m'     #  ${BGGREEN}
BGBROWN='\033[43m'     #  ${BGBROWN}
BGBLUE='\033[44m'     #  ${BGBLUE}
BGMAGENTA='\033[45m'     #  ${BGMAGENTA}
BGCYAN='\033[46m'     #  ${BGCYAN}
BGGRAY='\033[47m'     #  ${BGGRAY}
BGDEF='\033[49m'      #  ${BGDEF}

echo -e "█----------------------------------█-------------------------█--------------------------█"
echo -e "█	      ${WHITE}Scans${NORMAL}                █          ${WHITE}FTP${NORMAL}            █            ${WHITE}SSH${NORMAL}           █"
echo -e "█----------------------------------█-------------------------█--------------------------█"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}1${NORMAL}${LRED}]${NORMAL} ${WHITE}Host disvovery${NORMAL}		   █ ${LRED}[${NORMAL}${LGREEN}6${NORMAL}${LRED}]${NORMAL} ${WHITE}Check FTP vulners${NORMAL}   █ ${LRED}[${NORMAL}${LGREEN}9${NORMAL}${LRED}]${NORMAL}  ${WHITE}Are you SSH?${NORMAL}        █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}2${NORMAL}${LRED}]${NORMAL} ${WHITE}Scan all TCP ports${NORMAL}	   █ ${LRED}[${NORMAL}${LGREEN}7${NORMAL}${LRED}]${NORMAL} ${WHITE}Are you FTP?${NORMAL}        █ ${LRED}[${NORMAL}${LGREEN}10${NORMAL}${LRED}]${NORMAL} ${WHITE}Version${NORMAL}             █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}3${NORMAL}${LRED}]${NORMAL} ${WHITE}Scan 1000 popular TCP ports${NORMAL}  █ ${LRED}[${NORMAL}${LGREEN}8${NORMAL}${LRED}]${NORMAL} ${WHITE}Check FTP version${NORMAL}   █ ${LRED}[${NORMAL}${LGREEN}11${NORMAL}${LRED}]${NORMAL} ${WHITE}Fingerprint${NORMAL}         █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}4${NORMAL}${LRED}]${NORMAL} ${WHITE}Fast scan${NORMAL}		           █                         █ ${LRED}[${NORMAL}${LGREEN}12${NORMAL}${LRED}]${NORMAL} ${WHITE}Check Enum Users${NORMAL}    █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}5${NORMAL}${LRED}]${NORMAL} ${WHITE}Scan 100 popular UDP ports${NORMAL}   █                         █                          █"
echo -e "█----------------------------------█-------------------------█--------------------------█"
echo -e "█               ${WHITE}WEB${NORMAL}                █          ${WHITE}SMB${NORMAL}            █          ${WHITE}Others${NORMAL}          █"
echo -e "█----------------------------------█-------------------------█--------------------------█"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}13${NORMAL}${LRED}]${NORMAL} ${WHITE}Check hidden directories${NORMAL}    █ ${LRED}[${NORMAL}${LGREEN}18${NORMAL}${LRED}]${NORMAL} ${WHITE}SMB Information${NORMAL}    █ ${LRED}[${NORMAL}${LGREEN}23${NORMAL}${LRED}]${NORMAL} ${WHITE}BruteForce${NORMAL}          █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}14${NORMAL}${LRED}]${NORMAL} ${WHITE}Nikto scan${NORMAL}                  █ ${LRED}[${NORMAL}${LGREEN}19${NORMAL}${LRED}]${NORMAL} ${WHITE}Version${NORMAL}            █ ${LRED}[${NORMAL}${LGREEN}24${NORMAL}${LRED}]${NORMAL} ${WHITE}Search exploits${NORMAL}     █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}15${NORMAL}${LRED}]${NORMAL} ${WHITE}Search subdomains${NORMAL}           █ ${LRED}[${NORMAL}${LGREEN}20${NORMAL}${LRED}]${NORMAL} ${WHITE}Check vulners${NORMAL}      █ ${LRED}[${NORMAL}${LGREEN}25${NORMAL}${LRED}]${NORMAL} ${WHITE}Audit report${NORMAL}        █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}16${NORMAL}${LRED}]${NORMAL} ${WHITE}Check page source code${NORMAL}      █ ${LRED}[${NORMAL}${LGREEN}21${NORMAL}${LRED}]${NORMAL} ${WHITE}EternalBlue${NORMAL}        █                          █"
echo -e "█ ${LRED}[${NORMAL}${LGREEN}17${NORMAL}${LRED}]${NORMAL} ${WHITE}Server header check${NORMAL}         █ ${LRED}[${NORMAL}${LGREEN}22${NORMAL}${LRED}]${NORMAL} ${WHITE}Shared drives${NORMAL}      █                          █"
echo -e "█----------------------------------█-------------------------█--------------------------█"
echo ""
echo ""
echo ""
echo -en "${WHITE}Enter the respective number from tool list that you want to use: ${NORMAL}"
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
#. "$scriptDir/launch.sh"
