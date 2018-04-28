set backspace=indent,eol,start
set so=5

set number
set autoindent
set hlsearch
set hidden
set nocompatible
syntax on


ab #S ##########################################

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

nmap Ж :

" yank
nmap Н Y
nmap з p
nmap ф a
nmap щ o
nmap г u
nmap З P


nnoremap <silent> <C-c> :set relativenumber!<cr>
nnoremap <silent> <C-n> :set number! relativenumber!<cr>


""""""""""""""""""""""""""""""""""""""""""
"" Run this:
"" mkdir -p ~/.vim/vim-plug/ && wget -O ~/.vim/vim-plug/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
""
"" and uncomment things, that follows.
""
"" After that you have to run
"" :PlugInstall
"" in vim
""
"" UNCOMMENT FROM HERE:

source ~/.vim/vim-plug/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ctrlspace/vim-ctrlspace'
call plug#end()


let g:airline_theme='deus'
set term=xterm-256color

"" UNCOMMENT TILL HERE
""""""""""""""""""""""""""""""""""""""""""
