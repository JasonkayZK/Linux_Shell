#!/bin/bash
#Program:
#	Using netstat and grep to detect WWW,SSH,FTP and MAIL services.

#History:
#	2018/04/16	ZK	First Release

PARH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/~/bin
export PATH

echo "Now, I will detect your Linux server's services!"
echo -e "The www, ftp, ssh, adn mail will be detected! \n"

testing=$(netstat -tuln | grep ":80 ")		# 1): Detect the WWW ( port 80 )
if [ "$testing" != "" ]; then 
	echo "WWW is running in your system."
fi

testing=$(netstat -tuln | grep ":22 ")		# 2): Detect the SSH ( port 22 )
if [ "$testing" != "" ]; then
	echo "SSH is running in your system."
fi

testing=$(netstat -tuln | grep ":21 ")		# 3): Detect the FTP ( port 21 )
if [ "$testing" != "" ]; then 
	echo "FTP is running in your system."
fi

testing=$(netstat -tuln | grep ":25 ")		# 4): Detect the Mail ( port 25 )
if [ "$testing" != "" ]; then
	echo "Mail is running in your system."
fi

exit 0

