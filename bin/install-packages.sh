#!/usr/bin/env bash

apt update
apt install -y \
	dnsmasq \
	python3 \
	jq \
	wget \
	htop \
	iptraf-ng
