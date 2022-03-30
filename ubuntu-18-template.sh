#!/bin/bash
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# update and install required service
apt-get update -y -qq && DEBIAN_FRONTEND=noninteractive apt-get install -y -qq curl zip unzip wget net-tools jq 

# install docker
bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_docker_ubuntu18.sh)

# install netdata
bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_netdata.sh)

# Tuning Ubuntu
bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/tuning_ubuntu_parameter.sh)
