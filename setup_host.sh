#/bin/bash


hostname=$1
ip=$2
gateway=$3

## hosts
echo $hostname 

wget https://raw.githubusercontent.com/chalut01/setup/master/template/hostname
wget https://raw.githubusercontent.com/chalut01/setup/master/template/hosts
wget https://raw.githubusercontent.com/chalut01/setup/master/template/interfaces

sed -i 's/{{hostname}}/'$hostname'/g' hostname
sed -i 's/{{hostname}}/'$hostname'/g' hosts
sed -i 's/{{ip}}/'$ip'/g' interfaces
sed -i 's/{{gateway}}/'$gateway'/g' interfaces

mv hostname /etc/.
mv hosts /etc/.
mv interfaces /etc/network/.

echo "please reboot"
