# Path to your oh-my-zsh configuration.
export ZSH=$HOME/dotfiles/oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="gallois"

export PATH=~/scripts:$PATH

export EDITOR=vim
export CC=gcc-4.4

export RBXOPT=-X19
export JRUBY_OPTS="--1.9"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source "$HOME/.tmuxinator/scripts/tmuxinator"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

