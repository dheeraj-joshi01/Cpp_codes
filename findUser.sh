#!/bin/bash
#method:1
#script to check if user exists

FILE="/etc/passwd"
user=$1
flag=1

while IFS=: read -r name x
do
	[ "$name" == "$user" ] && { echo "User Found"; flag=1; break; } || flag=0

done < $FILE

[ $flag -eq 0 ] && echo "User Not Found"
exit 1;


<<#method:2

#!/bin/bash

#script to check if user exists

FILE="/etc/passwd"
user=$1
flag=1

while read -r line
do
	name=$(cut -d : -f 1 <<<$line)
	
	[ "$name" == "$user" ] && { echo "User Found"; flag=1; break; } || flag=0
	
done < $FILE

[ $flag -eq 0 ] && echo "User Not Found"

exit 1;
