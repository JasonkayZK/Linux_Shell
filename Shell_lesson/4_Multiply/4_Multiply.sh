#!/bin/bash

#Program:
#	User input 2 integer numbers; Program will cross these two numbers.

#History:
#	2018/04/16	ZK	First Release 

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/~/bin
export PATH

echo -e "You should input two numbers, I will cross them ! \n"
read -p "first number: " firnum
read -p "second number: " secnum

declare -i total=$firnum*$secnum	# Or we could use: total=$(($firnum*secnum)) to accomplish

echo -e "\nThe results of $firnum x $secnum is ==> $total"

