" Use bash as the standard shell, and allow it to source our .bashrc so we get
" all our juicy aliases and paths set up properly
set shell=/bin/bash

let g:python_highlight_all = 1

" Set up vim for the most incompatible vi experience: ie. let vim stand by its
" name 'Vi IMproved'
set nocompatible
" Setup vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Installed plugins
Plugin 'tomasr/molokai'
Plugin 'sheerun/vim-polyglot'
" Plugin 'vim-python/python-syntax'
" Plugin 'klen/python-mode'
" Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on    " required

set background=dark
colorscheme molokai

" Custom commands
syntax on
filetype on

:let mapleader = "-"
:let maplocalleader = "\\"
:nnoremap <leader>e :vsplit $MYVIMRC<cr>
:nnoremap <leader>s :source $MYVIMRC<cr>

:nnoremap \ x

:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
:vnoremap qq <esc>`>a'<esc>`<i'<esc>

:nnoremap L $
:nnoremap H 0
:nnoremap J :$<cr>
:nnoremap K :0<cr>

inoremap jk <esc>
inoremap <esc> <nop>

:nnoremap <up> <nop>
:nnoremap <down> <nop>
:nnoremap <left> <nop>
:nnoremap <right> <nop>

augroup filetype_python:
	:autocmd!
	:autocmd FileType python :setlocal nowrap
	:autocmd FileType python :iabbrev <buffer> iff if:<left>
	:autocmd FileType python :iabbrev <buffer> return NOPENOPENOPE
	:autocmd FileType python :iabbrev <buffer> ret return
augroup END

" Vimscript file settings ------------------------------ {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

:onoremap p i(
:onoremap b /return<cr>
:onoremap in( :<c-u>:normal! f(vi(<cr>
:onoremap in) :<c-u>:normal! F)vi)<cr>
:onoremap in{ :<c-u>:normal! f{vi{<cr>
:onoremap in} :<c-u>:normal! F}vi}<cr>

onoremap in@ :execute ":normal! /@\n v$"<cr>
:set statusline=%f%=%l/%L
" :execute "normal mqA;\<esc>`q"
:set hlsearch incsearch
