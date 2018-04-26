#!/bin/bash

cp -rv ../.aliases ../.tmux/ ../tmux.conf ../.vimrc ../.zkbd/ ../.zsh/ ../.zshrc ~

mkdir -p ${HOME}/.vim/vim-plug/ && wget -O ${HOME}/.vim/vim-plug/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -v ~/.vimrc{,.orig}
sed -i "s|~/.vim/|${HOME}/.vim/|g" ~/.vimrc 
