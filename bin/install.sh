#!/usr/bin/env bash

source /etc/router/config

$ROOT/bin/install-packages.sh
$ROOT/bin/install-network.sh
$ROOT/bin/install-templates.sh
$ROOT/bin/install-motd.sh
$ROOT/bin/install-dnsmasq.sh
$ROOT/bin/install-systemd.sh

