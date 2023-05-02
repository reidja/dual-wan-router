#!/usr/bin/env bash

source /etc/router/config

echo "Checking network status"

STATUS=0
if $ROOT/bin/ping.sh wan0 &> /dev/null; then 
	printf "  -> %-10s %s\n" "$WAN_0:" "UP (wan0)"
else
	printf "  -> %-10s %s\n" "$WAN_0:" "DOWN (wan0)"
	STATUS=1
fi

if $ROOT/bin/ping.sh wan1 &> /dev/null; then
	printf "  -> %-10s %s\n" "$WAN_1:" "UP (wan1)"
else
	printf "  -> %-10s %s\n" "$WAN_1:" "DOWN (wan1)"
	STATUS=1
fi

exit $STATUS

