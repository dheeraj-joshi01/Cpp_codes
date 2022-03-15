#!/bin/bash
#test case script
arg=$1

case $arg in
	[mM]|[tT]|[wW|[thTH]|[fF])
		echo "It's working day"
		;;
	[sat]|[sun])
		echo "Weekend"
		;;
	*)
		echo "Invalid entry"
		;;
	esac
