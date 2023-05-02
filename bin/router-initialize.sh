#!/usr/bin/env bash

source /etc/router/config

echo "Setting up network"
printf " -> %-15s %s\n" "wan0 ($WAN_0):" "$WAN_0_NETWORK via $WAN_0_GATEWAY ($WAN_0_IP)"
printf " -> %-15s %s\n" "wan1 ($WAN_1):" "$WAN_1_NETWORK via $WAN_1_GATEWAY ($WAN_1_IP)"
printf " -> %-15s %s\n" "lan0 ($LAN_0):" "$LAN_0_NETWORK as gateway ($LAN_0_IP)"

run-parts $ROOT/net

$ROOT/bin/set-wan.sh wan0
