#! /bin/bash 
export DEBIAN_FRONTEND=noninteractive

sudo ./install_basics.sh
sudo ./install_npm.sh
sudo ./install_typescript.sh
./setup_home.sh
