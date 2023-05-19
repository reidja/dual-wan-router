#!/usr/bin/env bash

source /etc/router/config
source $ROOT/bin/helpers.sh

echo "Starting WAN monitor"
echo " -> Interval: ${MONITOR_INTERVAL}s"

while true; do
	TARGET_WAN=$($ROOT/bin/get-wan.sh)
	CURRENT_WAN=$(cat /etc/router/current)
	echo ""
	echo "Running check"
	echo " -> Target WAN: $TARGET_WAN ($(get-name $TARGET_WAN))"
	if [ "$TARGET_WAN" = "$CURRENT_WAN" ]; then
		echo "Already on target"
        else
		$ROOT/bin/set-wan.sh "$TARGET_WAN"
	fi
	sleep "$MONITOR_INTERVAL"
done
