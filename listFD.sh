#!/bin/bash -x
#script is to user Ip and Op fds and extract filed from file
#listing no. of open FD with current process
exec 3</etc/resolv.conf
exec 4>/home/ubuntu/out2.txt

read -u 3 a b
mypid=$$
echo "current pid $mypid "
ls -l /proc/$mypid/fd

#echo "writing..."
#echo "writing to field 1 : $a" >&4
#echo "writing to field 2 : $b" >&4

#cat <&3 >> out2.txt

exec 4<&-
exec 3<&-
