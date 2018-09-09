#!/bin/bash
#Program:
#	This program use loop to add 1 to 100.
#
#History:
#	2018/04/17	ZK	First Release

PATH=bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

declare -i s=0
declare -i i=0
while [ "$i" != "100" ]
do
	declare -i i=$(( $i + 1 ))
	declare -i s=$(( $s + $i ))
done

echo "The result of 1+2+3+...+100 is ==> $s."

exit 0

