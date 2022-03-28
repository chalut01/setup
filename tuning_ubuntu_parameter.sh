#!/bin/bash

apt-get update -y 

# Tuning ulimit
echo "*         hard    nofile      65535" >> /etc/security/limits.conf
echo "*         soft    nofile      65535" >> /etc/security/limits.conf
ulimit -SHn 65535

# sysctl tuning
curl -o /etc/sysctl.conf https://raw.githubusercontent.com/chalut01/setup/master/template/sysctl.conf
sysctl -e -p /etc/sysctl.conf

# clear cache crontab
mkdir -p /opt/stack/monitor
curl -o /opt/stack/monitor/clearcache.sh https://raw.githubusercontent.com/chalut01/setup/master/template/clearcache.sh
chmod 755 /opt/stack/monitor/clearcache.sh
echo "0 0 * * * /opt/stack/monitor/clearcache.sh" >> /tmp/clearcache
crontab /tmp/clearcache
