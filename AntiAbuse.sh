#!/bin/sh
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -F
iptables -t mangle -F
iptables -F
iptables -X
iptables -A FORWARD -d 100.0.0.0/8 -j DROP
iptables -A FORWARD -d 102.0.0.0/8 -j DROP
iptables -A FORWARD -d 103.0.0.0/8 -j DROP
iptables -A FORWARD -d 25.0.0.0/8 -j DROP
iptables -A FORWARD -d 52.0.0.0/8 -j DROP
iptables -A FORWARD -d 240.0.0.0/8 -j DROP
iptables -A OUTPUT -d 100.0.0.0/8 -p udp -j DROP
iptables -A OUTPUT -d 100.0.0.0/8 -p tcp -j DROP
iptables -A OUTPUT -d 102.0.0.0/8 -p udp -j DROP
iptables -A OUTPUT -d 102.0.0.0/8 -p tcp -j DROP
iptables -A OUTPUT -d 103.0.0.0/8 -p udp -j DROP
iptables -A OUTPUT -d 103.0.0.0/8 -p tcp -j DROP
iptables -A OUTPUT -d 25.0.0.0/8 -p udp -j DROP
iptables -A OUTPUT -d 25.0.0.0/8 -p tcp -j DROP
iptables -A OUTPUT -d 52.0.0.0/8 -p udp -j DROP
iptables -A OUTPUT -d 52.0.0.0/8 -p tcp -j DROP
iptables -A OUTPUT -d 240.0.0.0/8 -p udp -j DROP
iptables -A OUTPUT -d 240.0.0.0/8 -p tcp -j DROP
iptables-save