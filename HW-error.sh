#!/bin/bash

FILE=/home/ubuntu/hwlogs
AMESS="WARNING-Error found on $(hostname) @ $(date) see $FILE"
OK_MESS="ALL OK- NO ERROR"

if test ! -f "$FILE" 
then
	echo "Error $FILE not found"
	exit 1
fi

error_log=$(grep -c -i "hardware error" $FILE)

if [ $error_log -gt 0 ]
then
	echo $AMESS

else
	echo $OK_MESS
fi
