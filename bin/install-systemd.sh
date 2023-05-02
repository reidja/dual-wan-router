#!/usr/bin/env bash

source /etc/router/config

set -x

cp $ROOT/conf/systemd/router-initialize.service /etc/systemd/system/
cp $ROOT/conf/systemd/router-monitor.service /etc/systemd/system

systemctl daemon-reload
systemctl enable router-monitor
systemctl enable router-initialize
