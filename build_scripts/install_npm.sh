#! /bin/bash
sudo apt-get install  -y npm

## to get latest node per: https://stackoverflow.com/questions/10075990/upgrading-node-js-to-latest-version
sudo npm install -g n

node --version

# update to the latest node
sudo n latest
hash -r
node --version

