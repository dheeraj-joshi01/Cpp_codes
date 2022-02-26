#!/bin/bash
#variable scope
declare -r var1=sunny	#to make it read only
scope() {
	local var=$1
	echo "value of global var = $var1"
	echo "within func the value of var is = $var";	
}       
var=outside
echo "before calling func value of var is $var"
scope local
echo "after func calling value of var is $var"
var1=cloudy
echo "$var1"
