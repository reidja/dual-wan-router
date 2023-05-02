
This is a simple Dual-WAN router with basic failover. It will not load balance connections.

This is a toy project and should not be used for production use. It is not supported in anyway.

## Requirements

 * 2 WAN networks
 * 1 local network
 * Debian (tested on PopOS!) based OS

## Features

 * Automatic fail-over to secondary WAN
 * Local DNS + DHCP (ipv4)
 * DNS Blacklist (adblock)
 * Docker support (expose docker network onto your LAN)

## Setup

 * Deploy to `/opt/router`
 * Add the following to `/etc/iproute2/rt_tables` 

    ```
    2	wan0
    3	wan1
    ```

Ensure the ID and name line up with the config file (see below)

 * Copy `/opt/router/router.config.sample` to `/etc/router/config` and update accordingly
 * Run `/opt/router/install.sh`
 * Reboot
