# setup
Setup New host <br>
$ curl https://raw.githubusercontent.com/chalut01/setup/master/setuphost.sh | bash -s $hostname $ip $gateway <br>
ex. $ curl https://raw.githubusercontent.com/chalut01/setup/master/setuphost.sh | bash -s JOMHOSTNAME 192.168.10.10 192.168.10.254 <br>
reboot


Install Docker <br>
$ bash <(curl -Ss https://raw.githubusercontent.com/chalut01/setup/master/install_docker.sh)

<br>

Install Netdata <br>
$ bash <(curl -Ss https://my-netdata.io/kickstart-static64.sh) --install /opt/stack
