#!/bin/bash
#Program:
#	This script only accepts the following parameter: one, two, three.
#History:
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "This program will print your selection !"

## You could use the sentances below instead to ger interaction program

read -p "Input your choice : " choice
case $choice in

#case $1 in
	"one")
		echo "Your choice is ONE"
		;;
	"two")
		echo "Your choice is TWO"
		;;
	"three")
		echo "Your choice is THREE"
		;;
	*)
		echo "Please use $0 {one|two|three} ONLY!"
		;;
esac

exit 0

