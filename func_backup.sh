#!/bin/bash
#FUNCNAME array to retrive indexed element

backup() {
       var=$1
       [ -z $var ] &&  { echo "${FUNCNAME} (): directory name not found "; exit 1;}
       echo "backup started"
	}       

backup $1
