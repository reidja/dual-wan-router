no-resolv
no-poll
server=$DNS_0
server=$DNS_1
local=/$DOMAIN/
interface=$LAN_0
interface=$DOCKER_0
expand-hosts
domain=reid
dhcp-range=$DHCP_START,$DHCP_END,12h
conf-file=/etc/router/dnsmasq.blacklist.txt

