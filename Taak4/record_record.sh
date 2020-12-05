#!/bin/bash

#how to create an alias record for (example: the apach2 website) in bind9

A_Record_IP_01="95.216.24.32"

# aliase IN CNAME server's hostname
echo apache 				      IN  CNAME   https://httpd.apache.org/ 	    >> /var/lib/bind/
echo https://httpd.apache.org/    IN    A         $A_Record_IP_01	        	>> /var/lib/bind/

sudo systemctl restart bind9

#https://wiki.debian.org/Bind9
#apache IP-address:
#http://95.216.24.32/ 
#https://wiki.debian.org/Bind9#File_.2Fetc.2Fbind.2Fnamed.conf