#!/bin/bash

# Update package
apt-get update

# Install openvpn
echo "Installing openVPN"
apt-get install openvpn -y

# Create the config directory
echo "Creating config directory"
mkdir -p /config/openvpn

VPN_CONFIG=$(find /config/openvpn -maxdepth 1 -name "*.ovpn" -print -quit)

# if ovpn file not found in /config/openvpn then exit
if [[ -z "${VPN_CONFIG}" ]]; then
	echo "[crit] No OpenVPN config file located in /config/openvpn/ (ovpn extension), please download from your VPN provider and then restart this container, exiting..." && exit 1
fi

echo "[info] OpenVPN config file (ovpn extension) is located at ${VPN_CONFIG}" 

openvpn ${VPN_CONFIG}