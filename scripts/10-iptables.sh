#!/usr/bin/env bash

iptables -t filter -A OUTPUT -d 127.0.0.1 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --sport 1080 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp --dport 443 -j ACCEPT
iptables -t filter -A OUTPUT -p tcp -j REJECT --reject-with tcp-reset
iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-port 3128
echo `ufw status` > /ufw.log
