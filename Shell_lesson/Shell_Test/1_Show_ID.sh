#!/bin/bash
#Program:
#	This program will show your name and you current directory via whoami and pwd.
#History:
#	2018/04/17	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH



echo "The current user is : " 
whoami
echo "Your current work directory is :"
pwd

exit 0

