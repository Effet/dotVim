"Many thanks for:
"  vgod        https://github.com/vgod/vimrc
"  carlhuda    https://github.com/carlhuda/janus/tree/master/janus/vim
"  carllerche  https://github.com/carllerche/vimrc/blob/master/vimrc


" Bases environment
set nocompatible
set nobackup vb t_vb=
filetype off " required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
"Bundle 'tpope/vim-surround'
"Bundle 'tpope/vim-repeat'
Bundle 'kevinw/pyflakes-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'sukima/xmledit'
Bundle 'wincent/Command-T'
Bundle 'Twinside/vim-cuteErrorMarker'
Bundle 'ervandew/supertab'
" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'FencView.vim'
Bundle 'matchit.zip'
Bundle 'OmniCppComplete'
"Bundle 'AutoClose'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" Turn (detection plugin indent) all
filetype plugin indent on
syntax on  " syntax highlight


set number ruler

" auto read when file is changed from outside
set autoread

set fdm=marker

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" use status line always, look like is in plugin
set laststatus=2

set showcmd showmode showmatch
set history=50

set wildchar=<TAB>
set wildmenu
set wildignore=*.o,*.class,*.pyc

" Searching
set hlsearch incsearch ignorecase smartcase

set autoindent copyindent

" Backspace cover everything
set backspace=indent,eol,start  "same as :set bs=2

"set list
set listchars=tab:>-

au FileType *        set ts=4 sts=0 sw=4   et
au FileType *sh,vim  set ts=2 sts=0 sw=2   et
au FileType make     set ts=8 sts=0 sw=8 noet
au FileType c,cpp,cc set ts=4 sts=0 sw=4 noet cin si
au FileType python   set ts=4 sts=0 sw=4   et

" bevore and after the current line when scrolling
set scrolloff=3

" yank to the system register (*) by default
set clipboard=unnamed

" terminal color settings
if &t_Co==256
  set cursorline
  "set cursorcolumn
  set background=dark
  " I just left the 256term part of lucius
  "colors lucius_256term_dark
  colors peaksea
else
  colors peaksea
endif

" set mouse
if has('mouse')
  set mouse=a
endif


"" Keys{{{

"" dvorak{{{
""let keyboard = 'dvorak'
""map ,d :source $DOTS/vim/dvorak.vim
""map ,q :source $DOTS/vim/qwerty.vim

"" dvorak mapping
""set langmap=dhtn;hjkl,DHTN;HJKL
""set langmap+=jkl;tdn,JKL;TDN,-$,_^

"no d h
"no h gj
"no t gk
"no n l
"no j t
"no k d
"no l n

"no D H
"no H J
"no T K
"no N L
"no J T
"no K D
"no L N

"no - $
"no _ ^
"" }}}
" base key map{{{
" leader key
let mapleader=','

" Sudo to write
cmap w!! w !sudo tee % >/dev/null

nmap ; :

nmap <leader>t :set expandtab!<BAR>set expandtab?<CR>
nmap <leader>l :set list!<BAR>set list?<CR>


" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
"cnoremap <C-K>      <C-U>
cnoremap <C-B>      <Left>
cnoremap <C-F>      <Right>
cnoremap <A-b>      <S-Left>
cnoremap <A-f>      <S-Right>
cnoremap <A-B>      <S-Left>
cnoremap <A-F>      <S-Right>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

"}}}

""}}}

" vim: set ts=2 sw=2 fdm=marker:
