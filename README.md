# setup
Setup New host <br>
$ curl https://raw.githubusercontent.com/chalut01/setup/master/setup_host.sh | bash -s $hostname $ip $gateway <br>
reboot

Setup NFS Server <br>
$ curl https://raw.githubusercontent.com/chalut01/setup/master/install_nfs_server.sh | bash $ip/sub $fullpath <br>
Example. <br>
curl https://raw.githubusercontent.com/chalut01/setup/master/install_nfs_server.sh | bash -s 192.168.10.0/24 /mnt/share <br>

Install SUSE 11.4 Repository <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/addRepoSuse11.4.sh)<br>

Install Docker <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_docker.sh)<br>

Install Golang <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_golang.sh)<br>

Install ansible <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_ansible.sh)<br>

Install Netdata <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_netdata.sh) <br>

Install logstash <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_logstash.sh)
