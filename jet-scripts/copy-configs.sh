#!/bin/bash

PLUGGED_DIR="${HOME}/.vim/plugged";

cp -rv ../.aliases ../.tmux/ ../.tmux.conf ../.vimrc ../.vim ../.zkbd/ ../.zsh/ ../.zshrc ${HOME};

for i in $(find ${PLUGGED_DIR} -name "*.tar.gz"); do
	tar -xvzf ${i} -C ${PLUGGED_DIR};
done;
sed -i "s|~/.vim/|${HOME}/.vim/|g" ~/.vimrc;

sudo ./sudo_keep_env.sh;
