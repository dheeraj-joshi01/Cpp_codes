#!/bin/bash
#script to take backup
dest=/home/ubuntu/Documents/compressed_backup/DS_backup
src=/home/ubuntu/Documents/DS

if ! [ -d $dest ];
then
	mkdir -p $dest
fi

if ! [ -d $src ];
then
	echo "$src dir not found. exiting."
	exit 1;

else
	echo "Backup started"

fi

tar zcvf $dest/bkp-of-DS.tar.gz $src 2>/dev/null

if [ $? -ne 0 ]
then 
	echo "backup failed" 
else
	
	echo "Backup done"
fi
