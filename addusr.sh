#!/bin/bash

while : 
do
	case $1 in
		0)
			exit
			;;		
	esac
	
	adduser $1;			#cmd for adding new user
	break;
		
done
		
