#!/bin/bash
# download to ~/downloads/
# install to ~/vim74/
# requires: wget, tar, make, gcc

cd ~
install_dir="$(pwd)/vim74"

mkdir -p downloads
cd downloads
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar xvfj vim-7.4.tar.bz2
cd vim74

./configure --prefix=$install_dir \
            --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.6/config \
            --enable-perlinterp \
            --enable-gui=gtk2 --enable-cscope \
            --enable-luainterp

make && make install

echo 'alias vim="~/vim74/bin/vim"' > ~/.bash_profile
