FROM ubuntu:18.04

RUN \
    # UPDATE Package Before install
    apt-get update && \
    # INSTALL OpenVPN CLient
    apt-get install -y openvpn

    