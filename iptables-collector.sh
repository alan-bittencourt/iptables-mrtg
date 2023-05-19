#!/bin/bash
down=`iptables -t mangle -L POSTROUTING -nvx | awk '/<ip_address>/{print $2}'`
up=`iptables -t mangle -L PREROUTING -nvx | awk '/<ip_address>/{print $2}'`
mult="8"
argi=`expr $down \* $mult`
argj=`expr $up \* $mult`
echo "$argi"
echo "$argj"
