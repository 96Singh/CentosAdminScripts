#!/bin/bash

#This script will diable IPv6 tables/firewall on a CentOS/RHEL machine. Use with Caution!

sudo service ip6tables status
echo " "

echo "Would you like to diable ip6tables? Choose an option below"
echo "y = yes"
echo "n = no"
echo "x = ignore changes and terminate script"

read option

if [ $option == "y" ]; then 
	echo "Disabling ipv6tables now"
	service ip6tables stop
	sudo service ip6tables status
	echo " "
elif
   [ $option == "n" ]; then
	echo "ipv6tables will remain turned on"
	service ip6tables start
	sudo service ip6tables status
	echo " "
elif [ $option == "x" ]; then
	echo "script terminating"
	sudo service ip6tables status
	echo " "

else
echo "The option you have choosen does not exist. Please reun this script and choose an option from the list provided"

exit 1

fi
