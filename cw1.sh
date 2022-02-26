#!/bin/bash
#script to copy /etc/passwd file

exec 3>/home/ubuntu/log.txt
exec 2>&3
exec 1>&2

echo "Welcome to ubuntu VM... " 2>&2 

exec 1<&-
exec 2<&-
exec 3<&-

