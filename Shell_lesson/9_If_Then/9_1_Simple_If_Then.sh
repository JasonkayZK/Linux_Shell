#!/bin/bash
#Program:
#	This program shows the user's choice.

#History:
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input (Y/N) : " yn

if [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
	echo "OK, continue"
	exit 0
fi

if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then 
	echo "Oh,interrupt!"
	exit 0
fi

echo "I don't know what your choice is" && exit 0

