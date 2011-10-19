#!/bin/bash

##################################
# Various Dependencies
##################################

cd `dirname $0`/vim/bundle/Command-T/ruby/command-t/; ruby extconf.rb; make

sudo apt-get install vim vim-gtk # vim and gvim
sudo apt-get install ttf-inconsolata # font for programming
sudo apt-get install ack-grep # for ack.vim
sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack # ack-grep won't cut it for ack.vim
sudo apt-get install exuberant-ctags
sudo apt-get install yajl-tools
sudo apt-get install zsh
sudo apt-get install nodejs
