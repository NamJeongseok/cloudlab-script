#!bin/bash

# Install CMake 3.16.9
wget https://cmake.org/files/v3.16/cmake-3.16.9.tar.gz
tar -xvzf cmake-3.16.9.tar.gz
cd ./cmake-3.16.9
./bootstrap --prefix=/usr/local
make
sudo make install

camke --version