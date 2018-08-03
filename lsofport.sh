#!bin/bash

#Script to generate a list of open applications & ports
#Makes use of "lsof package". Make sure you have this installed on you system.

#If you do no thave the package "  lsof.x86_64 0:4.82-5.el6 " or higher installed, this will install it for you.
sudo yum install lsof -y

#Applications & ports will now be checked.
lsof -Pnl +M -i4 
lsof -Pnl +M -i6 
netstat -tulpn 
