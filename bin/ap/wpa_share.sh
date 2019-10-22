#!/bin/bash
ifconfig wls3 down
ifconfig wls3 192.168.5.1
iptables -t nat -A POSTROUTING -o enp0s25 -j MASQUERADE
echo 1 > /proc/sys/net/ipv4/ip_forward
hostapd /home/u/bin/ap/hostapd.conf &
dnsmasq -d -C /home/u/bin/ap/dnsmasq.conf
