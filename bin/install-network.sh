#!/usr/bin/env bash

set -e

systemctl disable NetworkManager
systemctl enable systemd-networkd
