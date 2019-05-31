#!/bin/bash

# Update package
apt-get update

# Install openvpn
echo "Installing openVPN"
apt-get install openvpn -y

# Create the config directory
echo "Creating config directory"
mkdir -p /config/openvpn