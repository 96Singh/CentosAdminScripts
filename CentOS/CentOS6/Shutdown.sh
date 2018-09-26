#!/bin/bash

for i in $@ ; do

    if ping -c1 $@ > /dev/null ; then
        ssh root@$@ "shutdown -h now"
    else
        echo "Host $@ is already down. Nothing to do"
    fi

done
