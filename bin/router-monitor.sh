#!/usr/bin/env bash

source /etc/router/config
source $ROOT/bin/helpers.sh

echo "Starting WAN monitor"
echo " -> Interval: ${MONITOR_INTERVAL}s"

while true; do
	TARGET_WAN=$($ROOT/bin/get-wan.sh)
	echo ""
	echo "Running check"
	echo " -> Target WAN: $TARGET_WAN ($(get-name $TARGET_WAN))"
	$ROOT/bin/set-wan.sh "$TARGET_WAN"
	sleep "$MONITOR_INTERVAL"
done
