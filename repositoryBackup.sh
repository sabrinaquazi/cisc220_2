#!/bin/bash
#*1**1,2,3,4,5,6,7

tar czvf backup2016102309.tgz 

git push https://$3:$4@$2 --all

echo $ "Backup backupYYYYMMDDHH.tgz created sucessfully!"
echo $ "Backup backupYYYYMMDDHH.tgz committed to the local git repository"
echo $ "Backup backupYYYYMMDDHH.tgz pushed to the remote git repository cisc220_2"


