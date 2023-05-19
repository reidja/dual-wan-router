network:
    version: 2
    renderer: networkd
    ethernets:
        $WAN_0:
            dhcp4: false
            dhcp6: false
            match:
                macaddress: $WAN_0_MAC
            addresses:
              - $WAN_0_IP/24
            set-name: $WAN_0
            routes:
            - to: 0.0.0.0/0
              via: $WAN_0_GATEWAY
              table: $WAN_0_TABLE_ID
        $WAN_1:
            dhcp4: false
            dhcp6: false
            routes:
            - to: 0.0.0.0/0
              via: $WAN_1_GATEWAY
              table: $WAN_1_TABLE_ID
            match:
                macaddress: $WAN_1_MAC
            addresses:
              - $WAN_1_IP/24
            set-name: $WAN_1
        $LAN_0:
            dhcp4: false
            dhcp6: false
            match:
                macaddress: $LAN_0_MAC
            set-name: $LAN_0
            addresses:
              - $LAN_0_IP/24
            nameservers:
              addresses: [$DNS_0,$DNS_1]
