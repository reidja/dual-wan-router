#!/usr/bin/env bash

source /etc/router/config

set -x

# Disable news service
systemctl disable motd-news
systemctl stop motd-news

# Remove existing motd files
rm /etc/update-motd.d/* -f

# Symlink to the router motd files
for f in $ROOT/conf/update-motd.d/*; do 
	BASENAME=$(basename $f)
	ln -s "$f" "/etc/update-motd.d/$BASENAME"
done

