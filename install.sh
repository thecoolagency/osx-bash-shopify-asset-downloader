#!/bin/bash
#
#

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH

echo " "
echo '                     |\__/,|   (`\   ';
echo '                   _.|o o  |_   ) )  ';
echo '                 -(((---(((--------  ';
echo "##################################################### "
echo "######                                         ###### "
echo "######           create ready to run           ###### " 
echo "######         asset downloader script         ###### " 
echo "######          wwww.jonahlmadeya.com          ###### " 
echo "######                                         ###### "
echo "##################################################### " 

sudo -v

username=$(id -un)
fullName=$(id -F)
userDir=$(eval echo ~$USER)
scriptsDir="$userDir/Scripts"

echo " "
echo "Hello $fullName"
echo " "
echo "This script will install scripts in $scriptsDir then delete itself!"
echo " "

cd $scriptsDir



touch 1file.txt

pwd




