# The following lines were added by compinstall
 
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 'NUMERIC == 2'
zstyle ':completion:*' expand suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' substitute 'NUMERIC == 1'
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/${USER}/.zshrc'
 
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt appendhistory beep extendedglob
unsetopt autocd nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
 
alias zkbd="zsh $(find /usr/share/zsh -iname 'zkbd')"
autoload zkbd
[[ ! -d ~/.zkbd ]] && mkdir ~/.zkbd
[[ ! -f ~/.zkbd/$TERM-$VENDOR-$OSTYPE ]] && zkbd
 

if [ -f ~/.zsh/plugins/vi-mode/vi-mode.plugin.zsh ]; then
	. ~/.zsh/plugins/vi-mode/vi-mode.plugin.zsh
fi;

source  ~/.zkbd/$TERM-$VENDOR-$OSTYPE

[[ -n ${key[Home]}    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n ${key[End]}     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n ${key[Insert]}  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n ${key[Delete]}  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n ${key[Up]}      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n ${key[Down]}    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n ${key[Left]}    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n ${key[Right]}   ]]  && bindkey  "${key[Right]}"   forward-char
[[ -n ${key[Backspace]}   ]]  && bindkey  "${key[Backspace]}"   backward-delete-char
 
autoload colors && colors
 
PROMPT="%{$fg[yellow]%}%n%{$fg[cyan]%}@%{$fg[green]%}%m %{$fg_bold[red]%}%~ %{$fg_no_bold[cyan]%}%# %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}%*%{$reset_color%}"
 
export GREP_COLOR="1;33"
export LANG="en_US.UTF-8"
PATH=${PATH}:${HOME}/.local/bin:${HOME}/bin
 
export LS_COLORS='no=00;37:fi=00;37:di=01;36:ln=04;36:pi=33:so=01;35:do=01;35:bd=33;01:cd=33;01:or=31;01:su=37:sg=30:tw=30:ow=34:st=37:ex=01;31:*.cmd=01;31:*.exe=01;31:*.com=01;31:*.btm=01;31:*.sh=01;31:*.run=01;31:*.tar=33:*.tgz=33:*.arj=33:*.taz=33:*.lzh=33:*.zip=33:*.z=33:*.Z=33:*.gz=33:*.bz2=33:*.deb=33:*.rpm=33:*.jar=33:*.rar=33:*.jpg=32:*.jpeg=32:*.gif=32:*.bmp=32:*.pbm=32:*.pgm=32:*.ppm=32:*.tga=32:*.xbm=32:*.xpm=32:*.tif=32:*.tiff=32:*.png=32:*.mov=34:*.mpg=34:*.mpeg=34:*.avi=34:*.fli=34:*.flv=34:*.3gp=34:*.mp4=34:*.divx=34:*.gl=32:*.dl=32:*.xcf=32:*.xwd=32:*.flac=35:*.mp3=35:*.mpc=35:*.ogg=35:*.wav=35:*.m3u=35:';
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
 
if [ -f ~/.aliases ]; then
        . ~/.aliases;
fi;

if [[ ( -f /usr/bin/vim )  && ( -f ~/.vimrc ) ]]; then
	export EDITOR="/usr/bin/vim -u /home/${USER}/.vimrc"
fi;


echo
w;
echo;
df -h | sed -n -e "1p" -e "/\/dev\/vda/p";
echo;
df | sed -n -e "1p" -e "/\/dev\/vda/p";
echo;
tmux lsc


if [ -f ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	. ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh;
fi;

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[path]=dim
