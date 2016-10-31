#- Delete any previous rules in the INPUT, FORWARD and OUTPUT tables
# sudo iptables –D INPUT 1

#- Enable ssh only from computers in the range 130.15.0.0 to 130.15.255.255 [netmask /16]

#- Enable ssh from computers in any private network

#- Enable http and https from any IP
# http:
# iptables -A INPUT -i eth0 -p tcp --dport 80 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 80 -m state --state ESTABLISHED -j ACCEPT
# https:
# iptables -A INPUT -i eth0 -p tcp --dport 443 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 443 -m state --state ESTABLISHED -j ACCEPT

#- Drop any other incoming tcp traffic
# still allowing ssh so I can access the virtual machine
# sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
# sudo iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

#- Block connecting from your computer to any IP outside the range 130.15.0.0 to 130.15.255.255 [netmask /16]
# sudo iptables -A INPUT -s 130.15.0.0/16 -j DROP

#- Only allow IP 130.15.100.100 to connect to your mysql running on port 3306
# iptables -A INPUT -i eth0 -p tcp -s 130.15.100.100 --dport 3306 -m state --state NEW,ESTABLISHED -j ACCEPT
# iptables -A OUTPUT -o eth0 -p tcp --sport 3306 -m state --state ESTABLISHED -j ACCEPT

#- Drop outgoing ssh traffic to all other computers.
# sudo iptables -A OUTPUT -o eth0 -p tcp --dport 22 -j ACCEPT

#- Can you still ssh the VM from your host machine? Why? If you can’t, how to fix it?
# Yes because all you have done is dropped all outgoing traffic from the server. You have not dropped incoming ssh connections.
#

