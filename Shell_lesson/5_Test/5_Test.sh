#!/bin/bash

#Program:
#	User Input a filename, program will check the following:
#	1): exist?
#	2): file/directory?
#	3): file permissions

#History:
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo -e "Please input a filename, and I will check the filename's type and permission. \n\n"
read -p "Input a filename : " filename
test -z $filename && echo "You MUST input a filename." && exit 0

test ! -e $filename && echo "The file '$filename' DO NOT exist" && exit 0

test -f $filename && filetype="Regular file"
test -d $filename && filetype="Directory"

test -r $filename && perm="Readable"
test -w $filename && perm="$perm Writable"
test -x $filename && perm="$perm Executable"

echo "The file: $filename is a $filetype"
echo "And the permissions are: $perm"

exit 0

