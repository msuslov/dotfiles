#!/bin/bash
set -x -e

# Steps to build and install tmux from source on Ubuntu.
VERSION=2.7
sudo apt-get -y remove tmux
sudo apt-get -y install wget tar libevent-dev libncurses-dev checkinstall
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
rm -f tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure --prefix=/usr/local
make -j $(nproc)
sudo checkinstall -y --pkgname tmux --pkgversion ${VERSION}.
# sudo make install
# cd -
# sudo rm -rf /usr/local/src/tmux-*
# sudo mv tmux-${VERSION} /usr/local/src

## Logout and login to the shell again and run.
## tmux -V

