#!/usr/bin/env bash

function get-name {
        WAN="$1"
        if [ "$WAN" = "wan0" ]; then
                echo "$WAN_0"
        elif [ "$WAN" = "wan1" ]; then
                echo "$WAN_1"
        fi
}

