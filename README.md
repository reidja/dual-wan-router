
This is a simple Dual-WAN router with basic failover. It will not load balance connections.

This is a toy project and should not be used for production use. It is not supported in anyway.

**It also works under the assumption that both the WAN's have their own firewalls in place. Use at your own risk!**

## Requirements

 * 2 WAN networks (that you can attach to statically)
 * 1 local network (that you will run the dns / dhcp for)
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

    Ensure the id and table name line up with what you provide in the configuration file (next step)

 * Copy `/opt/router/config.sample` to `/etc/router/config` and update accordingly
 * Run `/opt/router/install.sh`
 * Reboot
