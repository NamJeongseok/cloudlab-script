#!/bin/bash

# Install MLNX OFED Firmware
wget https://content.mellanox.com/ofed/MLNX_OFED-4.9-5.1.0.0/MLNX_OFED_LINUX-4.9-5.1.0.0-ubuntu18.04-x86_64.tgz
tar -xvf MLNX_OFED_LINUX-4.9-5.1.0.0-ubuntu18.04-x86_64.tgz
cd MLNX_OFED_LINUX-4.9-5.1.0.0-ubuntu18.04-x86_64

sudo ./mlnxofedinstall  --force
sudo /etc/init.d/openibd restart
sudo /etc/init.d/opensmd restart

cd ..
sudo rm -rf ./MLNX_OFED_LINUX-4.9-5.1.0.0-ubuntu18.04-x86_64
sudo rm ./MLNX_OFED_LINUX-4.9-5.1.0.0-ubuntu18.04-x86_64.tgz
