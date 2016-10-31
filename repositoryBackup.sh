#!/bin/bash
#*1**1-7

tar czvf backup$(date +%Y%m%d%H).tgz --exclude '*.tgz' 

git pull

git add .

git commit -am 'backed up files' 

git push https://$2:$3@$1 --all

echo $ "Backup backup$(date +%Y%m%d%H).tgz created sucessfully!"
echo $ "Backup backup$(date +%Y%m%d%H).tgz committed to the local git repository"
echo $ "Backup backup$(date +%Y%m%d%H).tgz pushed to the remote git repository cisc220_2"
