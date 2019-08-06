#!/bin/bash

#./install_nfs_server.sh <ip/sub> </full/path>
#./install_nfs_server.sh 192.168.10.0/24 /opt/share

sub=$1
expath=$2

if [[ $sub == "" || $expath == "" ]]
then
        echo "pls enter subnetIP/24 and /full/path"
        exit 1
fi

apt-get update
apt install nfs-kernel-server -y
mkdir -p $expath
chown nobody:nogroup $expath
chmod 777 $expath
echo $expath $sub"(rw,sync,no_subtree_check)" >> /etc/exports
exportfs -a
systemctl restart nfs-kernel-server
ufw allow from $sub to any port nfs
ufw status
echo ""
cat /etc/exports
echo ""
