#!/usr/bin/env bash

source /etc/router/config

set -x

# Ensure no matter what table is currently used we can access the upstream NAT gateways
/opt/router/net/30-monitor
/opt/router/net/40-docker
