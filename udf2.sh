#!/bin/bash 
#script is to user Ip and Op fds and extract filed from file

exec 3</etc/resolv.conf
exec 4>/home/ubuntu/out2.txt

read -u 3 line

echo "Data read from fd3 is $line "

echo "writing..."
echo "writing to field 1 : $line" >&4

cat <&3 >> out2.txt

exec 4<&-
exec 3<&-
