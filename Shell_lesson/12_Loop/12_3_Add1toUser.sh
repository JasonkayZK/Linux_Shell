#!/bin/bash
#Program:
#	This program use loop to add 1 to a number which user gives.
#History:
#	2018/04/17	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/~/bin
export PATH

declare -i s=0
declare -i i=0
read -p "Please input a number to add: " n
while [ "$i" != "$n" ]
do 
	declare -i i=$(( $i + 1 ))
	declare -i s=$(( $i + $s ))
done

echo "The result that 1+...+$n is ==>  $s."

exit 0

