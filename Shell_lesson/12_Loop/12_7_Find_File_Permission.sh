#!/bin/bash
#Program:
#	User input dir name, I find the permission of file.
#History:
#	2018/04/17	ZK	First Release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1): Check whether the file exists:

read -p "Please input a directory : " dir
if [ "$dir" == "" -o ! -d "$dir" ]; then
	echo "The $dir is NOT exist in your system."
	exit 1
fi

# 2) : Test the file:

filelist=$(ls $dir)
for filename in $filelist
do
	perm=""
	test -r "$dir/$filename" && perm="$perm readable"
	test -w "$dir/$filename" && perm="$perm writable"
	test -x "$dir/$filename" && perm="$perm executable"

	echo "The file $dir/$filename's permission is $perm."
done

exit 0

