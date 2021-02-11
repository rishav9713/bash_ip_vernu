#! /usr/bin/bash
# made with lazy_robot
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}THIS PROGRAM IS MADE BY RISHAV KUMAR${reset}"
echo "Your IP address is"${red} $(ifconfig | grep broadcast | awk '{print $2}') ${reset}
echo "Your machine/system/current user name is ${red} $USER" ${reset}
echo "[sudo] password for $USER:"
read pass
if [ $pass == "kali" ] || [ $pass == "Kali" ] || [ $pass == "12345" ] || [ $pass == "KALI" ] || [ $pass == "kali123" ] || [ $pass == "username" ]; then
	echo "${red}your $USER  machine needs to upgrade password ${reset}"
	echo "you need? Y = yes, N = no"
	read reply
	if [ $reply == "Y" ] || [ $reply == "y" ]; then
		echo $(sudo passwd $USER)
	else
		echo "You need to be a strong password, to protect your machine ( $USER ) from hacker"
	fi
else
	echo "${green}Your system/machine is secure"
fi
