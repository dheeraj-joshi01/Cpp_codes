#!/bin/bash
#script to check name in file
FILE=/home/ubuntu/name.txt
if ! [ $1 ]
then
	echo "cmd usage in cmd arg1"

else
	user=$1
	rslt=$(grep -c -i "^$user" $FILE)
	
	if [ $rslt -eq 1 ]
	then
		echo "Name found "
	else
		echo "Name not found"
	fi
fi
