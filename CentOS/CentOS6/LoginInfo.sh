#! /usr/bin/env bash
#1)We need to turn off SSH's PrintMotd option by editing /etc/ssh/sshd_config:
#2)We just need to restart sshd as so that takes effect:
#3)Now we'll place our shell script into /etc/profile.d.
#4)Then once we login, we'll see the output of our script!


# Basic info
HOSTNAME=`uname -n`
ROOT=`df -h | grep xvda1 | awk '{print $4}' | tr -d '\n'`



# System load
MEMORY1=`free -t -m | grep Total | awk '{print $3" MB";}'`
MEMORY2=`free -t -m | grep "Mem" | awk '{print $2" MB";}'`
LOAD1=`cat /proc/loadavg | awk {'print $1'}`
LOAD5=`cat /proc/loadavg | awk {'print $2'}`
LOAD15=`cat /proc/loadavg | awk {'print $3'}`

echo "
===============================================
 - VM Hostname............: $HOSTNAME
 - Disk Space..........: $ROOT remaining
===============================================
 - CPU usage...........: $LOAD1, $LOAD5, $LOAD15 (1, 5, 15 min)
 - Memory used.........: $MEMORY1 / $MEMORY2
 - Swap in use.........: `free -m | tail -n 1 | awk '{print $3}'` MB
===============================================
"
