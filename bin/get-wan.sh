#!/usr/bin/env bash

source /etc/router/config

if $ROOT/bin/ping.sh wan1 &> /dev/null; then
    echo "wan1"
else
    echo "wan0"
fi
