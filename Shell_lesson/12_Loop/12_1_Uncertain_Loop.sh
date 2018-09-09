#!/bin/bash
#Program:
#	Repeat question until user input correct anwser.
#History:
#	2018/04/16	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH


## Use until to accomplish :

#until [ "$yn" == "YES" ] || [ "$yn" == "yes" ]
#do

## Use while to accomplish :

while [ "$yn" != "YES" ] && [ "$yn" != "yes" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done

echo "OK! You input this correct answer!"

exit 0

