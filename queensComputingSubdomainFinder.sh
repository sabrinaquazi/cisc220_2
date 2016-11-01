#!/bin/bash
# print the header
echo -e 'IP Address' '\t' 'Sub-Domain';
# loop through all ip's in the desired range
for ip in 130.15.{0..255}.{0..255}; do  
# use nslookup and print the substring whereever there is an ip avaliable
DOMAIN=$( nslookup $ip | awk '/name =/{print substr($4,1)}')
# print all the results
echo -e $ip '\t' $DOMAIN
done
