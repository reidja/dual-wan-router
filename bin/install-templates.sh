#!/usr/bin/env bash

source /etc/router/config

envsubst < $ROOT/conf/dnsmasq.conf.tpl > /etc/dnsmasq.conf
envsubst < $ROOT/conf/netplan.yml.tpl > /etc/netplan/router.yaml
envsubst < $ROOT/conf/hosts.tpl > /etc/hosts
envsubst < $ROOT/conf/resolv.conf.tpl > /etc/resolv.conf
envsubst < $ROOT/conf/hostname.tpl > /etc/hostname
