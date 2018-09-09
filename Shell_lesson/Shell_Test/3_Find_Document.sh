#!/bin/bash
#Program:
#	This program will Find, Build or Delete the given document.
#History:
#	2018/04/17	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "Please input a filename, which will be Searched: \n\n"

while [ "$filename" == "" ]
do
	read -p "Please input your filename ; " filename
done

test ! -e $filename
if [ "$?" != "0" ]; then 
	touch $filename && exit 0
else
	test -f $filename && rm $filename && mkdir logical && exit 0
	test -d $filename && rm $filename && exit 0

fi

