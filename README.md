# Jet-Console

This is combination of tmux, zsh and vim with some configs and vim-plugins, that I like using in my work.

I've written only some of the config files and installation scripts by myself, still, all the programs and plugins are available freely.


* https://github.com/jeffkreeftmeijer/vim-numbertoggle

* https://github.com/vim-airline/vim-airline

* https://github.com/vim-airline/vim-airline-themes

* https://github.com/vim-ctrlspace/vim-ctrlspace


Tmux, zsh and vim are most likely available in your favorite GNU/Linux distribution.



## Installation

BE CAREFUL AND MAKE SURE, YOU HAVE BACKUP OF YOUR OWN CONFIGS!!!

After you've cloned repo, you have to enter `jet-scripts` dir and run `install-tools.sh`, then `copy-configs.sh`.

```
cd jet-console/jet-scripts
./install-tools.sh
./copy-configs.sh
```


If your shell isn't zsh, you also have to change it:

```
chsh -s $(which zsh)
```
