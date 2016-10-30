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

#- Block connecting from your computer to any IP outside the range 130.15.0.0 to 130.15.255.255 [netmask /16]

#- Only allow IP 130.15.100.100 to connect to your mysql running on port 3306

#- Drop outgoing ssh traffic to all other computers.

#- Can you still ssh the VM from your host machine? Why? If you can’t, how to fix it?

