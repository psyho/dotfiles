# Path to your oh-my-zsh configuration.
export ZSH=$HOME/dotfiles/oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="mgutz"

export PATH=~/scripts:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=~/android-sdk-linux/tools:$PATH
export PATH=~/android-sdk-linux/platform-tools:$PATH

export EDITOR=vim

export RBXOPT=-X19
export JRUBY_OPTS="--1.9"

export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export DISABLE_AUTO_TITLE=true

alias tmux='TERM=xterm-256color DISPLAY=:0 tmux'
alias mux='TERM=xterm-256color DISPLAY=:0 mux'
alias bi='bundle install'
alias be='bundle exec'

[[ -s "$HOME/.tmuxinator/scripts/tmuxinator" ]] && source "$HOME/.tmuxinator/scripts/tmuxinator"
PATH=$PATH:$HOME/.rbenv/bin

# eval "$(hub alias -s)"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(command-not-found ssh-agent rvm rbenv gcloud nvm)

source $ZSH/oh-my-zsh.sh

# for some reason, this is necessary to make the keybindings work properly
source ~/dotfiles/oh-my-zsh/lib/key-bindings.zsh
