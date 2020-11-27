#!/bin/bash
CERT=${1?Error: no cert path given}

#Copy all relevant certificate files
ps -ef | grep apache

cp -p /var/opt/apache_*/conf/httpd.conf /home/user

#Using openssl command to read certificate expiry date

CertExpires=openssl x509 -in $CERT -inform PEM -text -noout -enddate | grep “Not After” | awk ‘{print $4, $5, $7}’
TodayPlus14=date -ud “+14 day” | awk ‘{print $2, $3, $6}’

if [ “$TodayPlus14” = “$CertExpires” ]
then
echo "Your SSL Cert will expire in 14 days

fi
