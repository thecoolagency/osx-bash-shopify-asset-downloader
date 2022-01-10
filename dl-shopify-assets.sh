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
echo "######         Download shopify assets         ###### " 
echo "######          wwww.jonahlmadeya.com          ###### " 
echo "######                                         ###### "
echo "##################################################### " 

sudo -v

username=$(id -un)
fullName=$(id -F)
userDir=$(eval echo ~$USER)
userDirDoc="$userDir/Documents"
container="$userDir/Documents/shopify-assets"

echo $userDir
echo $userDirDoc
echo $container

echo " "
echo "Hello $fullName"
echo " "

mkdir $userDirDoc/shopify-assets

cd $container

echo "enter the domain name as: domain.com"
read domainName

mkdir -p $domainName/wget

cd $domainName/wget

wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains $domainName --no-parent $domainName }

cd $domainName

find . -type f -print0 | xargs -0 sed -i '' -e 's|"//cdn|"https://cdn|g'

touch /Users/$username/Documents/shopify-assets/$domainName/wget/output.txt

grep -r " src=\"https://cdn" . >> /Users/$username/Documents/shopify-assets/$domainName/wget/output.txt

cd ..

awk -i inplace '!/'.js'/' output.txt
awk -i inplace '!/'.css'/' output.txt
awk -i inplace '!/'.pdf'/' output.txt
awk -i inplace '!/'.mp4'/' output.txt

find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/^.*https/https/'

find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.png.*/.png/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.PNG.*/.PNG/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.jpg.*/.jpg/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.JPG.*/.JPG/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.jpeg.*/.jpeg/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.JPEG.*/.JPEG/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.gif.*/.gif/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.GIF.*/.GIF/'
# find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.pdf.*/.pdf/'
# find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.PDF.*/.PDF/'
# find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.mp4.*/.mp4/'
# find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.MP4.*/.MP4/'

touch output-cleaned.txt

awk '!seen[$0]++' output.txt >> output-cleaned.txt

sort -o output-cleaned.txt output-cleaned.txt

mkdir assets

cd assets

wget -i ../output-cleaned.txt

open -a Finder /Users/$username/Documents/shopify-assets/$domainName/wget/

echo ""
echo "######                All Done!                ###### " 
echo ""
