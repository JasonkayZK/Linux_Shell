#!/bin/bash
#Program:
#	Use function to repeat infomation.
#History:
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

function printit() {
	
	echo "Your choice is $1."	# This $1 is printit inner variaty! Not the same as the $1 in the shell script!

}

echo "This function will print your selection !"

case $1 in	# This $1 is in the shell script.
	"one")
		printit 1
		;;
	"two")
		printit 2
		;;
	"three")
		printit 3
		;;
	*)
		echo "Please use $0 {one|two|three} ONLY !"
		;;
esac

exit 0

