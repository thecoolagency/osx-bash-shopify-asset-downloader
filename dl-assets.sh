#!/bin/bash
#
#

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH

echo " ";
echo '                     |\__/,|   (`\   ';
echo '                   _.|o o  |_   ) )  ';
echo '                 -(((---(((--------  ';
echo "##################################################### "
echo "######                                         ###### "
echo "######         Download website assets         ###### " 
echo "######          wwww.jonahlmadeya.com          ###### " 
echo "######                                         ###### "
echo "##################################################### " 

sudo -v

username=$(id -un)
fullName=$(id -F)
userDir=$(eval echo ~$USER)
userDirDoc="$userDir/Documents"
container="$userDir/Documents/web-assets"

echo $userDir
echo $userDirDoc
echo $container

echo " "
echo "Hello $fullName"
echo " "

mkdir $userDirDoc/web-assets

cd $container

echo "enter the domain name as: domain.com"
read domainName

mkdir -p $domainName/wget

cd $domainName/wget

wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains $domainName --no-parent $domainName }

cd $domainName

find . -type f -print0 | xargs -0 sed -i '' -e 's|"//cdn|"https://cdn|g'

touch /Users/$username/Documents/web-assets/$domainName/wget/output.txt

grep -r " src=\"https://cdn" . >> /Users/$username/Documents/web-assets/$domainName/wget/output.txt

cd ..

awk -i inplace '!/'.js'/' output.txt
awk -i inplace '!/'.css'/' output.txt
awk -i inplace '!/'.pdf'/' output.txt
awk -i inplace '!/'.mp4'/' output.txt

find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/^.*https/https/'

find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.png.*/.png/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.jpg.*/.jpg/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.gif.*/.gif/'

touch output-cleaned.txt

awk '!seen[$0]++' output.txt >> output-cleaned.txt

sort -o output-cleaned.txt output-cleaned.txt

mkdir assets

cd assets

wget -i ../output-cleaned.txt

open -a Finder /Users/$username/Documents/web-assets/$domainName/wget/

echo ""
echo "######                All Done!                ###### " 
echo ""
