#!/usr/bin/env bash

source /etc/router/config

WAN="$1"

if [ $# -ne 1 ]; then
	echo "Usage: $0 <wan0|wan1>" &> /dev/stderr
	exit 1
fi

if [ "$WAN" = "wan0" ]; then
    TARGET_GATEWAY="$WAN_0_GATEWAY"
    TARGET_TABLE="$WAN_0_TABLE"
elif [ "$WAN" = "wan1" ]; then
    TARGET_GATEWAY="$WAN_1_GATEWAY"
    TARGET_TABLE="$WAN_1_TABLE"
else
    echo "Unknown wan: $WAN - must be wan0 or wan1" &> /dev/stderr
    exit 1
fi

echo "Changing WAN: $WAN"
echo " -> Gateway: $TARGET_GATEWAY"
echo " -> Table:   $TARGET_TABLE"

set -x

ip route delete default
ip route add default via $TARGET_GATEWAY
ip rule del from all iif lan0 lookup $WAN_0_TABLE
ip rule del from all iif lan0 lookup $WAN_1_TABLE
ip rule del from all iif lan0
ip rule add from all iif lan0 lookup $TARGET_TABLE

set +x

echo $WAN > /etc/router/current

/opt/router/hooks/post-change-wan.sh $WAN
