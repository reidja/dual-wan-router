#!/usr/bin/env bash

source /etc/router/config

if $ROOT/bin/ping.sh wan0 &> /dev/null; then
    echo "wan0"
else
    echo "wan1"
fi
