#!/bin/bash

set -e

install-dotfiles () {
  install-dependencies
  clone-dotfiles
  link-configs
  change-shell
  install-tmux
  install-vim-plugins
}

install-packages () {
  sudo apt-get -qq install "$@"
}

install-dependencies () {
  sudo apt-get update
  install-packages git python vim zsh wget
}

clone-dotfiles () {
  if [ ! -d ~/dotfiles ] ; then 
    cd && git clone --recursive https://github.com/psyho/dotfiles.git
  fi
}

link-configs () {
  if [ ! -e ~/.zshrc ] ; then
    cd && ./dotfiles/link_configs.py
  fi
}

change-shell () {
  chsh -s /bin/zsh
}

install-tmux () {
  install-packages libevent-dev libncurses-dev pkg-config
  cd /tmp
  wget -O tmux-1.8.tar.gz http://sourceforge.net/projects/tmux/files/tmux/tmux-1.8/tmux-1.8.tar.gz/download
  tar -xzf tmux-1.8.tar.gz
  cd tmux-1.8 && ./configure && make && sudo make install
  cd -
}

install-vim-plugins () {
  vim -c 'BundleInstall | q!'
}

install-dotfiles
