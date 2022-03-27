#!/bin/bash

apt-get update -y 

# Tuning ulimit
echo "*         hard    nofile      65535" >> /etc/security/limits.conf
echo "*         soft    nofile      65535" >> /etc/security/limits.conf
ulimit -SHn 65535

# sysctl tuning
curl -o /etc/sysctl.conf https://gist.githubusercontent.com/yegorg/36cf9710e8ef50fa07571db0f4b981f9/raw/b82710dfd03df131818ced7634c1c7b7e663dc6c/sysctl.conf
sysctl -e -p /etc/sysctl.conf
