#!/bin/bash

set -e

install-dotfiles () {
  install-dependencies
  clone-dotfiles
  link-configs
  install-asdf
  clone-dependencies
  change-shell
  install-vim-plugins
}

install-packages () {
  sudo apt-get -qq install "$@"
}

install-dependencies () {
  sudo apt-get update

  install-packages git vim zsh wget curl

  # asdf ruby
  install-packages autoconf patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

  # asdf python
  install packages build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
}

clone-dependencies () {
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/ohmyzsh
}

install-asdf () {
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
  echo '. "$HOME/.asdf/asdf.sh"' >> .bashrc
  echo '. "$HOME/.asdf/completions/asdf.bash"' >> .bashrc

  . "$HOME/.asdf/asdf.sh"
  asdf plugin install python
  asdf plugin install ruby
  asdf plugin install nodejs
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

install-vim-plugins () {
  vim -c 'PluginInstall | q!'
}

install-dotfiles
