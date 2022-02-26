#!/bin/bash
#script to display 10 biggest files

exec 3>/home/ubuntu/outputfile.txt
du -a /home | sort -n -r | head -n 10 >&3
