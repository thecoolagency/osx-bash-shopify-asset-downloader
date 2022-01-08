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
echo "######            DL Website Assets            ###### " 
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

# CONTINUE ################### ################### ################### ###################
# CONTINUE ################### ################### ################### ###################
# CONTINUE ################### ################### ################### ###################

cd /Users/jonah/Documents/documents/cyber\ romance/

echo "enter the domain name like: domain.com"
read domainName

mkdir -p $domainName/wget

cd $domainName/wget

fullPath="/Users/jonah/Documents/documents/cyber\ romance/$domainName/wget"

wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains $domainName --no-parent $domainName }

cd $domainName

find . -type f -print0 | xargs -0 sed -i '' -e 's|"//cdn|"https://cdn|g'

touch /Users/jonah/Documents/documents/cyber\ romance/$domainName/wget/link-output.txt

grep -r " src=\"https://cdn" . >> /Users/jonah/Documents/documents/cyber\ romance/$domainName/wget/link-output.txt

cd ..

gawk -i inplace '!/'.js'/' link-output.txt
gawk -i inplace '!/'.css'/' link-output.txt
gawk -i inplace '!/'.gif'/' link-output.txt
gawk -i inplace '!/'.pdf'/' link-output.txt

find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/^.*https/https/'

find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.png.*/.png/'
find . -type f -name "*.txt" -print0 | xargs -0 sed -i '' -e 's/.jpg.*/.jpg/'

touch /Users/jonah/Documents/documents/cyber\ romance/$domainName/wget/link-output-cleaned.txt

awk '!seen[$0]++' link-output.txt >> link-output-cleaned.txt

sort -o link-output-cleaned.txt link-output-cleaned.txt

mkdir assets

cd assets

wget -i ../link-output-cleaned.txt

open -a Finder /Users/jonah/Documents/documents/cyber\ romance/$domainName/wget/

echo ""
echo "######                All Done!                ###### " 
echo ""
