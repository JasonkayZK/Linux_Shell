#!/bin/bash

#Program:
#	User input his first name and last name. Program show his full name.

#History:
#	2018/04/16	ZK	First Release

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/~/bin
export PATH

read -p "Please input your first name: " firstname
read -p "Please input your last name: " lastname
echo -e "\nYour full name is $firstname $lastname"

