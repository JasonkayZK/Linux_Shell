#!/bin/bash
#Program:
#	You input your demobilization date, I calculate how many days before you demobilize.
#
#History:
#	2018/04/16	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# Standard Input
echo "This program will try to caltulate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20180416) : " datetmp

# Regular Expression test the input
date_d=$(echo $datetmp | grep '[0-9]\{8\}')		# Whether it is 8 numbers or not
if [ "$date_d" == "" ]; then
	echo "You input the wrong data format!..."
	exit 1
fi

# Calculate the Demobilization Days
declare -i date_dem=`date --date="$datetmp" +%s`
declare -i date_now=`date +%s`
declare -i date_total_s=$(( date_dem - date_now ))
declare -i date_d=$(( date_total_s/60/60/24 ))

if [ "$date_total_s" -lt "0" ]; then
	echo"You had been demobilized before : "$(( -1*$date_d ))" ago"
else
	declare -i date_h=$(( $(( $date_total_s - $date_d*60*60*24 )) /60/60 ))
	echo "You will demobilize after $date_d days and $date_h hours."

fi

exit 0

