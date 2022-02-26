#!/bin/bash -x
#script on here docs
tar -cvf /home/ubuntu/bkp.tar.gz /home/ubuntu/*.sh 2>/dev/null
[ $? -eq 0 ] && echo "backup done" || echo "backup failed"
status=$?
mail -s 'Backup status' dheeraj.joshi@einfochips.com <<msg
The status of backup is $status
date is $date
host is $hostname
Backup job done
msg

