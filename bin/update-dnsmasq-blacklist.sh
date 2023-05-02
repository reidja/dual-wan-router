#!/usr/bin/env bash

source /etc/router/config

echo "Updating DNS Blacklist"
wget "$DNSMASQ_BLACKLIST_URL" -O dnsmasq.blacklist.txt -nv
mv dnsmasq.blacklist.txt /etc/router/dnsmasq.blacklist.txt
systemctl restart dnsmasq
