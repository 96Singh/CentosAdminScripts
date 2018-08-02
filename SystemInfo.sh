#!/bin/bash
#This script will list basic system information about your VM

#HostDetails
echo "-----HostDetails-----"
sudo hostname
echo " "


#Date&Time
echo "-----Date&Time+TimeZone-----"
sudo date
echo " "


#UsersLoggedIn
echo "-----UsersLoggedIn-----"
sudo w
echo " "


#Uptime&SystemLoad
echo "-----Uptime & SystemLoad-----"
sudo uptime
echo " "


#Stroage
echo "-----Disk space info-----"
sudo df -h
echo " "


#RAM
echo "-----RAM Usage info-----"
sudo free -gh
echo " "
