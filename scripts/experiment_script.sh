#!/bin/bash
# 实验命令脚本（根据实验记录整理）

└─$ sudo ifconfig eth0 10.0.3.2 netmask 255.255.255.0 up
└─$ sudo ifconfig eth1 10.0.3.10 netmask 255.255.255.0 up
└─$ sudo route add default gw 10.0.3.1 eth0
└─$ ifconfig
└─$ ping 8.8.8.8
zsh: suspended  ping 8.8.8.8
└─$ sudo ifconfig eth0 10.0.3.15 netmask 255.255.255.0 up
└─$ sudo route add default gw 10.0.3.1 eth1
└─$ ping 10.3.10
ping: connect: Network is unreachable
└─$ ping 10.0.3.10
zsh: suspended  ping 10.0.3.10
└─$ ip route show
└─$ sudo sysctl -w net.ipv4.ip_forward=1
└─$ sudo iptables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
└─$ sudo iptables -A FORWARD -i eth0 -o eth1 -j ACCEPT
└─$ sudo iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT
└─$ sudo ifconfig eth0 10.0.3.10 netmask 255.255.255.0 up
└─$ ifconfig -a
└─$ ping 10.0.3.1
zsh: suspended  ping 10.0.3.1
└─$ sudo route del default gw 10.0.3.1 dev eth1
└─$ sudo sysctl net.ipv4.ip_forward
└─$ sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
└─$ sudo systemctl restart networking
└─$ sudo dhclient -r eth0
└─$ sudo dhclient eth0
└─$ sudo systemctl restart NetworkManager
└─$ sudo nmcli device connect eth0
└─$ sudo route del -net 10.0.3.0/24 dev eth0
└─$ sudo route del default gw 10.0.3.1
└─$ sudo route add default gw 10.0.2.2
└─$ ping 10.0.2.2
zsh: suspended  ping 10.0.2.2
└─$ ping 10.0.3.11
zsh: suspended  ping 10.0.3.11
└─$ sudo arpspoof -i eth1 -t 10.0.3.11 10.0.3.1
zsh: suspended  sudo arpspoof -i eth1 -t 10.0.3.11 10.0.3.1
^CCleaning up and re-arping targets...
sudo arpspoof -i eth1 -t 10.0.3.1 10.0.3.11
ifconfig
└─$ sudo ifconfig eth0 10.0.3.11 netmask 255.255.255.0
└─$ sudo ifconfig eth1 10.0.3.10 netmask 255.255.255.0
└─$ ^[[200~sudo ifconfig eth0 10.0.3.11 netmask 255.255.255.0 up
└─$ sudo ifconfig eth0 10.0.3.11 netmask 255.255.255.0 up
└─$ sudo ifconfig eth1 10.0.3.16 netmask 255.255.255.0
└─$ sudo route add -net 10.0.3.0/24 gw 10.0.3.16
└─$ ^[[200~ping 10.0.3.10
zsh: bad pattern: ^[[200~ping
└─$ ifconfig eth0
└─$ sudo route del -net 10.0.3.0/24 via 10.0.3.16 dev eth1
Usage: inet_route [-vF] del {-host|-net} Target[/prefix] [gw Gw] [metric M] [[dev] If]
inet_route [-vF] add {-host|-net} Target[/prefix] [gw Gw] [metric M]
inet_route [-vF] add {-host|-net} Target[/prefix] [metric M] reject
inet_route [-FC] flush      NOT supported
└─$ sudo ip route del 10.0.3.0/24 via 10.0.3.16 dev eth1
└─$ sudo route add default gw 10.0.2.2 eth1
└─$ sudo route add default gw 10.0.3.1
└─$ sudo route add default gw 10.0.3.1 dev eth1
└─$ sudo route del default gw 10.0.3.1 dev eth0
└─$ sudo route add default gw 10.0.3.10
