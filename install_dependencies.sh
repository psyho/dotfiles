#!/bin/bash

##################################
# Various Dependencies
##################################

cd `dirname $0`/vim/bundle/wincent-command-t; rake make

sudo apt-get install vim vim-gtk # vim and gvim
sudo apt-get install ttf-inconsolata # font for programming
sudo apt-get install ack-grep # for ack.vim
sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack # ack-grep won't cut it for ack.vim
sudo apt-get install exuberant-ctags
