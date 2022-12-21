#!/bin/zsh

cd /opt/brew/etc/openvpn
echo "记得将DNS修改为192.168.1.103"
openvpn --cd /opt/homebrew/etc/openvpn --config client.ovpn
