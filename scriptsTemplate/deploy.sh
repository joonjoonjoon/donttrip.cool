#!/bin/bash  
cd "$(dirname "$0")"
cd ..
git pull
git add .
got add -A
git commit -a -m "[auto commit by joon]"
git push
lftp -e "set ssl:verify-certificate no && mirror -R htdocs/ / && exit" -u USERNAME,PASSWORD FTPSERVER
#beware that sometimes the username is an email address!