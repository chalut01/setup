#!/bin/bash
#prepare

##apt-get update -y
apt-get install -y autoconf autoconf-archive autogen automake curl gcc git gzip libjudy-dev liblz4-dev libmnl-dev libssl-dev libuv1-dev lm-sensors make netcat nodejs pkg-config python python-mysqldb python-psycopg2 python-pymongo tar uuid-dev zlib1g-dev 

curl -Ss 'https://raw.githubusercontent.com/firehol/netdata-demo-site/master/install-required-packages.sh' >/tmp/kickstart.sh && bash /tmp/kickstart.sh -i netdata-all

git clone https://github.com/firehol/netdata.git --depth=1
cd netdata

./netdata-installer.sh --install /opt/stack

echo ""
echo "" 
echo ""
echo "If install in DMA...... Do the following step"
echo "1. apt-get install -y libyajl-dev libaprutil1 libc6 nginx"
echo "2. service nginx stop"
echo "3. systemctl disable nginx"
echo "4. cd /opt/stack/script"
echo "5. edit nginx.chat.sh ,  nginx.tcp.sh , nginx.wildfly.sh , ctlscript.sh" 
echo "6. comment line export LD_LIBRARY_PATH='/opt/stack/nginx/lib/:/opt/stack/mqtt/lib/' "
echo "7. FINISH"

