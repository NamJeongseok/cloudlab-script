#!/bin/bash

# memcached
sudo apt-get -y --force-yes install memcached libmemcached-dev

# cityhash
git clone https://github.com/google/cityhash.git
cd cityhash
./configure
make all check CXXFLAGS="-g -O3"
sudo make install
cd ..

# boost
wget https://jaist.dl.sourceforge.net/project/boost/boost/1.65.1/boost_1_65_1.tar.gz
tar -xvf ./boost_1_65_1.tar.gz
cd boost_1_65_1
./bootstrap.sh
# ./b2 install --with-system --with-coroutine --build-type=complete --layout=versioned threading=multi
./b2 install --with-system --with-coroutine --layout=versioned threading=multi
sudo apt-get -y --force-yes install libboost-all-dev
cd ..

# tbb
git clone https://github.com/wjakob/tbb.git
cd tbb/build
cmake ..
make -j
sudo make install
ldconfig
cd ../..

# openjdk-8
sudo apt-get -y --force-yes install openjdk-8-jdk