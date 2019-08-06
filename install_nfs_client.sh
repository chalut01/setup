#!/bin/bash

ip=$1
spath=$2
cpath=$3


if [[ $ip == "" || $spath == "" || $cpath == "" ]]
then
        echo ""
        echo "Please enter <NFS-Server-IP> <Server-Path> <Client-Path> "
        echo ""
        echo "Example"
        echo "./install_nfs_client.sh 192.168.10.200 /opt/share /mnt/share"
        echo ""
        exit 1
fi
apt-get update -y
apt-get install nfs-common -y
mkdir -p $cpath
mount $ip:$spath $cpath

df -h
