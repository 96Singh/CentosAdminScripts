#!bin/bash
#Info: By running this script, you will turnoff/shutdown "SELinux"Please reboot the server once completed for changed to take effect

sudo sestatus 

if [ $sestatus 0 ]
	then echo "sestatus"

elif [ $ssestatus 1 ]
	then echo "sestatus"

else [ $ssestatus 2 ]
echo "sestatus"

fi

sudo sestatus && setenforce 0 && sestatus

echo "In the above output you see that the value of "SELinux status is disabled" "
echo "SELinux has been disabled. Be prepared for a reboot in the next 2 mins!"
echo "Your Host Will Be Rebooted In The Next 2 Mins!Save your work/progress now! "
echo ""
#sudo shutdown -r +2 "Your system is going down for a Reboot!"
