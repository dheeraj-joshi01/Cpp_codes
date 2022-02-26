#!/bin/bash
#FUNCNAME array to retrive indexed element

check() {
       var=$1
       [ -f $var ] && { echo "$var is file"; exit 0;}
	  [ -d $var ] && { echo "$var is directory"; exit 0;}
	  }       

check $1
