:let mapleader = "-"
:let maplocalleader = "\\"
:nnoremap <leader>e :vsplit $MYVIMRC<cr>
:nnoremap <leader>s :source $MYVIMRC<cr>

:nnoremap \ x
:iabbrev adn and

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
