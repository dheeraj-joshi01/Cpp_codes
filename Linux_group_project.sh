#!/bin/bash

#script to download website, sort its contents and compress it in a folder

mkdir website
mkdir website-zip

new=/home/ubuntu/website-zip			#change this path as per your machine

read -p "enter directory" FILE
echo ""
read -p "enter site" site		

#site=newpoonabakery.com			#website used for test purpose

url=https://$site

cd $FILE

wget $url -m					#download website

cd $FILE/$site/
mkdir html
cd $FILE/$site/
mkdir css
cd $FILE/$site/
mkdir javas
cd $FILE/$site/
mkdir img
cd $FILE/$site/
mkdir pdf
cd $FILE/$site/
mkdir random

cd ..
pwd

cd $FILE/$site/

find * -type f -print -not -type d -and -not -exec mv -t ./random/ {} .. \;
cd ./random/

#sorting files in respective folders

find -name '*.css' -exec mv {} $FILE/$site/css/ \;

find -name '*.js' -exec mv {} $FILE/$site/javas/ \;

find -name '*.jpg' -exec mv {} $FILE/$site/img/ \;
find -name '*.jpeg' -exec mv {} $FILE/$site/img/ \;
find -name '*.png' -exec mv {} $FILE/$site/img/ \;
find -name '*.pdf' -exec mv {} $FILE/$site/pdf/ \;
find -name '*.html' -exec mv {} $FILE/$site/html/ \;

cd $FILE/$site

#compressing the sorted website folder
find /home/ubuntu/website/$site -empty -type d -delete
tar zcvf $new/site.tar.gz $FILE 2>/dev/null




