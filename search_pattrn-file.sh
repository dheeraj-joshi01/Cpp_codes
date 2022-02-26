#!/bin/bash
#FUNCNAME array to retrive indexed element

f_file() {
	local PATH=/home
	var=$1
	status=grep -d "$var" $PATH		#error line 7 and 14
	[ ! $status ] && { echo "$var file exist"; exit 0;}
	}       

pattrn() {
	local PATH=/home/ubuntu/pattern.txt
	var=$1
	status=grep "$var" $PATH
	[ ! $status ] && { echo "$var pattern found"; exit 0;}
	} 

pattrn $1
