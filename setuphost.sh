#/bin/bash


hostname=$1
ip=$2
gateway=$3

## hosts
echo $hostname 

sed -i 's/{{hostname}}/$hostname/g' hostname
sed -i 's/{{hostname}}/$hostname/g' hosts
sed -i 's/{{ip}}/$ip/g' interfaces
sed -i 's/{{gateway}}/$gateway/g' interfaces

mv hostname /etc/.
mv hosts /etc/.
mv interfaces /etc/network/.

reboot
