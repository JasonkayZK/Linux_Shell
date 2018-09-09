#!/bin/bash

#Program:
#
#	Program creates three files, which named by user's input and date command;

#History:
#
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/~/bin
export PATH

echo -e "I will use 'touch' command to create 3 files."
read -p "Please input your file name: " fileuser

filename=${fileuser:-"filename"}

date1=$(date --date='2 days ago' +%Y%m%d)	# The day before yesterday
date2=$(date --date='1 days ago' +%Y%m%d)	# Yesterday
date3=$(date +%Y%m%d)

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch "$file1"
touch "$file2"
touch "$file3"

