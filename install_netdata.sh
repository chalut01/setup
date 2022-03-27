#!/bin/bash

apt-get update -y

# install netdata
wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh && sh /tmp/netdata-kickstart.sh
sleep 3
# Tuning netdata configuration 
curl -o /etc/netdata/netdata.conf http://localhost:19999/netdata.conf
sed -i 's/history = 3996/history = 608400/g' /etc/netdata/netdata.conf
sed -i 's/# dbengine disk space = 256/ dbengine disk space = 2048/g' /etc/netdata/netdata.conf
sed -i 's/# x-frame-options response header =/ x-frame-options response header = SAMEORIGIN/g' /etc/netdata/netdata.conf
systemctl restart netdata
