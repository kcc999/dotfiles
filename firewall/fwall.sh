#!/bin/bash
# -- UTF 8 --
iptables="/sbin/iptables"
LAN="enp2s0"

echo ""

##clear tables

$iptables -F
$iptables -X
$iptables -Z

#echo " Correct flush"

##DROP

$iptables -P INPUT DROP
$iptables -P FORWARD DROP


#allow localhost
$iptables -A INPUT -i lo -j ACCEPT

#allow packets

$iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
