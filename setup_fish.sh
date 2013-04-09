#!/bin/bash

grep -q '^/usr/local/bin/fish$' /etc/shells; or echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p ~/.config/fish
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
