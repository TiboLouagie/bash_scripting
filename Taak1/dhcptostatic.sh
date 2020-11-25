#!/bin/env bash
NAME=${1?Error: no name given}

echo $NAME


if [[ $NAME == "on" ]]; then
	echo "Enabling DHCP..."
	N="Ethernet"
	netsh interface ip set address $N dhcp
	netsh interface ip set dns $N dhcp
elif [[ $NAME == "off" ]]; then
	echo "Enabling static ip..."
	N="Ethernet"
	IP="192.168.0.129"
	GW="192.168.0.1"
	MASK="255.255.255.0"
	DNS1="8.8.8.8"
	DNS2="8.8.4.4"
	netsh interface ip set address name = $N static $IP $MASK $GW
	netsh interface ip add dns $N $DNS1
	netsh interface ip add dns $N $DNS2 index=2
else
	echo "Please enter on for dhcp and off for static ip"
fi
