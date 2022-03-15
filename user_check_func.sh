#!/bin/bash
#function to check root user

checkRoot() {
	FILE="/etc/passwd"
	$whoami >user
	flag=1

	while IFS=: read -r name x
	do
		[ "$user" == "root" ] && { echo "You are a root user.."; flag=1; break; } || flag=0

	done < $FILE

	[ $flag -eq 0 ] && echo "You are not a root user"
	exit 1;

}

checkRoot
