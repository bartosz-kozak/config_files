""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          "
"   			   Instalacja dodatków                     " 
"                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible "wymagane do dzialania pluginow
filetype off "wymagane do dzialania pluginow
" ustawia siezke dla Vundle i inicjalizuje
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" pozwala Vundle zarzadzac pluginami, wymagane
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'lepture/vim-jinja'
" Dodatki muszą być przed tą linią
call vundle#end()         "wymagane
filetype plugin indent on "wymagane
" Ustawienia dla ultisnips
let g:UltiSnipsExpandTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Ustawienia dla vim-markdown
filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          "
"   			   Podstawowe ustawienia                   "
"                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set laststatus=2 "ustawienia dla powerline
set t_Co=256 "ustawienia dla powerline
set nu
set tabstop=4
set shiftwidth=4
set history=100
" pokazuje niekoniczone komedny vima
set showcmd
" pokazuje menu kiedy uzywakmy tab aotouzupelnienia (polecenia : vim)
set wildmenu
" ustawia liczbe linijek jaka bedzie wyswietlana po z + enter
set scrolloff=5
set hlsearch
set incsearch
" jak lina tekstu nie miesci się na ekranie to łamie ją miedzy słowami, a nie w środku słowa
set lbr
" zostawia wciecie z poprzedniej linijki
set ai
" sam stara się rozpoznac kiedy zrobic wciecie tekstu
set si
set splitbelow
" przy podziale okna nowe okno poniżej a nie powyżej aktywnego okna
set encoding=utf-8
" ustawia chowek systemu na rejest unnamed
colorscheme zenburn
"set background=light "schemat na cwiczenia
"colorscheme PaperColor "schemat na cwiczenia
" Start vim z NERDTree
autocmd VimEnter * NERDTree

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          "
"   			   Własne komendy i przypisania            "
"                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new tab with NERDTree and create or edit a new file
command! -nargs=1 TabNewFile tabnew | NERDTree | wincmd p | execute 'edit' <q-args>
" Edit an existing file in a new tab with NERDTree
command! -nargs=1 TabEditFile tabnew | NERDTree | wincmd p | execute 'edit' <q-args>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          "
"   			   Ustawienia indent PEP 8                 "
"                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set ai
	\set fileformat=unix

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                          "
"   			   Ustawienia indent dla html              "
"                                                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.js, *.html, *.css
	\set tabstop=2
	\set softtabstop=2
	\set shiftwidth=2

