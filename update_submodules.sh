#!/bin/bash

git submodule foreach 'git co .; git pull'
cd vim/bundle/wincent-command-t; rake make
