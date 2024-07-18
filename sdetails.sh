#bin/bash

echo "************************ HOSTNAME ************************" >> $x.txt

x=$(cat /etc/hostname)

echo "$x" >> $x.txt




echo "************************ DATE ************************" >> $x.txt

date >> $x.txt




echo "************************ PCI Info ************************" >> $x.txt

lspci | grep th >> $x.txt



echo "************************ CPU info ************************" >> $x.txt

lscpu | head -n 16 >> $x.txt



echo "************************ RAM Info ************************" >> $x.txt

dmidecode -t17 | head -n 35 >> $x.txt


echo "************************ Memory Info ************************" >> $x.txt


cat /proc/meminfo | head -n 20 >> $x.txt



echo "************************ MB info ************************" >> $x.txt

dmidecode -t2 >> $x.txt

echo "************************ CPU Frequency  ************************" >> $x.txt


dmidecode -t processor | grep "Speed" >> $x.txt

echo "************************ IP Address  ************************" >> $x.txt

ip a >> $x.txt
