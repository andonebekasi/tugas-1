#!/bin/bash
service ssh start
adduser --quiet --disabled-password --shell /bin/bash --home /home/cat --gecos "User" cat
echo "cat:cat" | chpasswd
adduser --quiet --disabled-password --shell /bin/bash --home /home/dog --gecos "User" dog
echo "dog:dog" | chpasswd
adduser --quiet --disabled-password --shell /bin/bash --home /home/owl --gecos "User" owl
echo "owl:owl" | chpasswd
echo "root:root" | chpasswd
wget http://prdownloads.sourceforge.net/webadmin/webmin-1.954.tar.gz -P /tmp
/etc/webmin/start
