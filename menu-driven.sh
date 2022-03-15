#!/bin/bash
#menu driven script using test case to run some shell commands

echo "Enter 
1 -> Display Host Name
2 -> ifconfig
3 -> Command History
4 -> Present working dir
5 -> Previous working dir
6 -> check rwx permission
0 -> exit"


while :
do

	read -p "Enter option " opt

	case $opt in
		1)
			echo $(hostname)
			;;
		2)
			echo $(ifconfig)
			;;
		3)
			echo $(history)
			;;
		4)
			echo $(pwd)
			;;
		5)
			echo $($OLDPWD)
			;;
		6)
			echo $(ls -l)
			;;
			
		0)
			exit
			;;

		*)
			echo "Invalid option"
			;;
		esac
done
