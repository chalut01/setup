#!/bin/bash
#prepare

##apt-get update -y

curl -Ss 'https://raw.githubusercontent.com/firehol/netdata-demo-site/master/install-required-packages.sh' >/tmp/kickstart.sh && bash /tmp/kickstart.sh -i netdata-all

git clone https://github.com/firehol/netdata.git --depth=1
cd netdata

./netdata-installer.sh --install /opt/stack
