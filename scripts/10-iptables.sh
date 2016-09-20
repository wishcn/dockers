#!/usr/bin/env bash

iptables -A INPUT -p tcp --syn --dport 21541 -m connlimit --connlimit-above 32 -j REJECT --reject-with tcp-reset
iptables -A INPUT -p tcp --syn --dport 24090 -m connlimit --connlimit-above 32 -j REJECT --reject-with tcp-reset
iptables -A INPUT -p tcp --syn --dport 25919 -m connlimit --connlimit-above 32 -j REJECT --reject-with tcp-reset
iptables -A INPUT -p tcp --syn --dport 24138 -m connlimit --connlimit-above 32 -j REJECT --reject-with tcp-reset

iptables -t filter -A OUTPUT -d 127.0.0.1 -j ACCEPT
iptables -t filter -m owner --uid-owner http-ss -A OUTPUT -p tcp --sport 1080 -j ACCEPT
iptables -t filter -m owner --uid-owner http-ss -A OUTPUT -p tcp --dport 80 -j ACCEPT
iptables -t filter -m owner --uid-owner http-ss -A OUTPUT -p tcp --dport 443 -j ACCEPT
iptables -t filter -m owner --uid-owner http-ss -A OUTPUT -p tcp -j REJECT --reject-with tcp-reset
iptables -t nat -m owner --uid-owner http-ss -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-port 3128

# 邮件
iptables -I FORWARD -p tcp --dport 25 -j DROP
iptables -I INPUT -p tcp --dport 25 -j DROP
iptables -I OUTPUT -p tcp --dport 25 -j DROP
echo `ufw status` > /ufw.log
