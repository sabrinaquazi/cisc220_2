#!/bin/bash
for ip in 130.15.{0..255}.{0..255}; do
echo $ip
nslookup $ip;
# grep the output of nslookup to only extract the part after "name ="
done
