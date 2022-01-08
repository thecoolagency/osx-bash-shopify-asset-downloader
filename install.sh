#!/bin/bash
#
#

# wget -O - https://raw.githubusercontent.com/thecoolagency/osx-bash-shopify-asset-downloader/main/install.sh | sudo bash

# exit when any command fails
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
# trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT


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

echo "####### START INSTALL ##################################################### "
echo " "

cd $scriptsDir

fullPath="$scriptsDir/dl-assets.sh"
# echo $fullPath

echo "==> downloading website files..."

wget -q https://raw.githubusercontent.com/thecoolagency/osx-bash-shopify-asset-downloader/main/dl-assets.sh
if [ $? != 0 ]
then
    echo " "
    echo "ERROR: website files not downloaded! - status: $?"
else
    echo " "
    echo "OK"
fi

echo " "
echo "==> setting script ownership..."

chown -R $username:staff $fullPath
if [ $? != 0 ]
then
    echo " "
    echo "ERROR: script ownership not updated! - status: $?"
else
    echo " "
    echo "OK"
fi

echo " "
echo "==> setting script permissions..."

chmod u+x $fullPath
if [ $? != 0 ]
then
    echo " "
    echo "ERROR: script permissions not updated! - status: $?"
else
    echo " "
    echo "OK"
fi

echo " "
echo "####### END INSTALL ##################################################### "

echo " "
echo "Congrats! To download assets for a shopify site, open your Terminal and run:"
echo " "
echo "  sh dl-assets.sh"
echo " "
