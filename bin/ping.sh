#!/usr/bin/env bash

source /etc/router/config

WAN="$1"

if [ $# -ne 1 ]; then
        echo "Usage: $0 <wan0|wan1>" &> /dev/stderr
        exit 1
fi

if [ "$WAN" = "wan0" ]; then
    TARGET_DEVICE="$WAN_0"
    TARGET_IP="$WAN_0_VERIFY"
elif [ "$WAN" = "wan1" ]; then
    TARGET_DEVICE="$WAN_1"
    TARGET_IP="$WAN_1_VERIFY"
else
    echo "Unknown wan: $WAN - must be wan0 or wan1" &> /dev/stderr
    exit 1
fi

ping -c "$PING_ATTEMPTS" -I "$TARGET_DEVICE" "$TARGET_IP"

