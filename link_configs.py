#!/usr/bin/env python

import os
import os.path

def current_dir():
  path = os.path.dirname(__file__)
  return os.path.abspath(path)

def link_local_to_home(local_name, home_name):
  local_path = os.path.join(current_dir(), local_name)
  home_path = os.path.join('~', home_name)
  home_path = os.path.expanduser(home_path)
  
  if os.path.exists(home_path): os.remove(home_path)
  os.symlink(local_path, home_path)

files = ['vim', 'vimrc', 'gvimrc', 'zshrc', 'gitconfig', 'githelpers', 'gitignore_global', 'tmux.conf', 'ctags', 'gemrc']

for file in files:
  link_local_to_home(file, '.'+file)
