#!/bin/bash

cp -rv ../.aliases ../.tmux/ ../.tmux.conf ../.vimrc ../.vim ../.zkbd/ ../.zsh/ ../.zshrc ~

sed -i "s|~/.vim/|${HOME}/.vim/|g" ~/.vimrc 

sudo ./sudo_keep_env.sh
