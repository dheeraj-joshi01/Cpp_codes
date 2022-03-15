#!/bin/bash
#script for user def IO file descriptor
# R&W using same desc
file=/home/ubuntu/out1.txt

#exec 4</etc/passwd
exec 3<>$file
echo "hey guys ">&3
date >&3
#echo "reading from passwd"
cat <&3 >>out2.txt

#exec 4<&-
exec 3<&-
