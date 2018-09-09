#!/bin/bash
#Program:
#	Use ping command to check the network PC's status.
#History:
#	2018/04/17	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

network="192.168.1"
for sitenu in $(seq 1 100)
do
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/mull && result=0 || result=1
	
	if [ "$result" == "0" ]; then
		echo "Server ${network}.${sitenu} is UP."
	else
		echo "Server ${network}.${sitenu} is DOWN."
	fi
done

exit 0

