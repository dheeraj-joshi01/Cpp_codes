#!/bin/bash
#script to copy /etc/passwd file

exec 3</etc/passwd
exec 4>/tmp/passwd.output

echo "writing to /tmp/passwd.output.... "

while read -u 3 data
do
echo "$data" >&4
done
exec 4<&-
exec 3<&-

