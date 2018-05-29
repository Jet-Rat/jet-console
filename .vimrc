set backspace=indent,eol,start
set so=5

set fileencodings=utf-8,default

set number
set autoindent
set hlsearch
set hidden
set nocompatible
syntax on


ab #S ##########################################

"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:_
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<

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
Plug 'dhruvasagar/vim-table-mode'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Yggdroot/indentLine'
call plug#end()


let g:airline_theme='deus'
set term=xterm-256color


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


let g:indentLine_enabled = 0
let g:indentLine_char = '¦'
" Vim
let g:indentLine_color_term = 239
" GVim
let g:indentLine_color_gui = '#A4E57E'

"" UNCOMMENT TILL HERE
""""""""""""""""""""""""""""""""""""""""""



command! -nargs=* Stab call Stab()
function! Stab()
	let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
	if l:tabstop > 0
		let &l:sts = l:tabstop
		let &l:ts = l:tabstop
		let &l:sw = l:tabstop
	endif
	call SummarizeTabs()
endfunction

function! SummarizeTabs()
	try
		echohl ModeMsg
		echon 'tabstop='.&l:ts
		echon ' shiftwidth='.&l:sw
		echon ' softtabstop='.&l:sts
		if &l:et
			echon ' expandtab'
		else
			echon ' noexpandtab'
		endif
	finally
		echohl None
	endtry
endfunction
