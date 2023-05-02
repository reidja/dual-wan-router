#!/usr/bin/env bash

source /etc/router/config

set -x

rm /etc/cron.daily/update-dnsmasq-blacklist
ln -s $ROOT/bin/update-dnsmasq-blacklist.sh /etc/cron.daily/update-dnsmasq-blacklist
$ROOT/bin/update-dnsmasq-blacklist.sh

systemctl enable dnsmasq
systemctl restart dnsmasq
