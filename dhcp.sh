#!/bin/bash




NAME="Ethernet"



IP="192.168.0.129"


GW="192.168.0.1"

MASK="255.255.255.0"


DNS1="8.8.8.8"
DNS2="8.8.4.4"


netsh interface ip set address name = $NAME static $IP $MASK $GW
netsh interface ip add dns $NAME $DNS1
netsh interface ip add dns $NAME $DNS2 index=2



echo CLOSING...