#!/bin/bash
#script for functions and CLA 
#function 
cmd (){
       var=$1
       
     echo "name of script is $0"
	echo "First arg is $1"
	echo "2nd arg is $2"
	echo "total no. of arg $#"
	echo "all args are $*"
	echo "all arg are $@"
	}       

cmd car
echo "next"
cmd bike truck
