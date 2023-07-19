#!/bin/bash

cd /root
chmod +x veeam_proxy.sh

cd /etc/squid/ 
cp local.conf local.conf.bak

echo "acl veeam-srv01 src 10.1.0.4/32
http_access allow veeam-srv01" >/etc/squid/local.conf

systemctl restart squid.service
