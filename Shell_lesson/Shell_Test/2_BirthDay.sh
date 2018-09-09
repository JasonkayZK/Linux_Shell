#!bin/bash
#Program:
#	This program will calculate how many days left to your birthday.
#History:
#	2018/04/17	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1): Standard Input:

read -p "Please input your birthday (YYYYMMDD ex>20180417) : " birthtmp

# 2): Test input:

date_d=$(echo $birthtmp | grep '[0-9]\{8\}')
if [ "date_d" == "" ]; then
	echo "You input the wrong data format!..."
	exit 1
fi

# 3): Calculate Days:

declare -i date_dem=`date --date="$birthtmp" +%s`
declare -i date_now=`date +%s`
declare -i date_total_s=$(( date_dem - date_now ))

if [ "$date_total_s" -lt "0" ]; then
	declare -i date_total_s=$(( $date_total_s + 365*24*60*60 ))
fi

declare -i date_d=$(( date_total_s/60/60/24 ))
declare -i date_h=$(( $(( $date_total_s - $date_d*60*60*24 )) /60/60))
echo "Your birthday will after $date_d days and $date_h hours."

exit 0

