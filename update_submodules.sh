#!/bin/bash

git submodule foreach 'git co .; git co master; git pull'
cd vim/bundle/wincent-command-t; rake make
