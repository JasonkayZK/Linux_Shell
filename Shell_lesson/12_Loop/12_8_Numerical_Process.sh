#!/bin/bash
#Program:
#	Try do calculate 1+2+...+${user_input}
#History:
#	2018/04/17	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "Please input a number, I will count for 1+2+3...+user_input : " num

declare -i s=0
for (( i=1; i<=num; i++ ))
do
	declare -i s=$(( $s + $i ))
done

echo "The result is ==> $s. "

exit 0

