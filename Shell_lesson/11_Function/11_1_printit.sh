#!/bin/bash
#
#Program:
#	Use function to repeat infomation.
#
#History:
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/~/bin
export PATH

function printit() {
	echo -n "Your choice is "
}

echo "This program will print your choice !"
case $1 in 
	"one")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	"two")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	"three")
		printit; echo $1 | tr 'a-z' 'A-Z'
		;;
	*)
		echo "Please use $0 {one|two|three} ONLY !"
		;;
esac

exit 0

