set nocompatible
set smartindent
set shiftwidth=4 softtabstop=4 tabstop=4
set expandtab
set incsearch ignorecase hlsearch
colorscheme darkblue
" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc
au BufRead,BufNewFile *.hs setfiletype haskell
au BufRead,BufNewFile *.hamlet setfiletype hamlet
au BufRead,BufNewFile *.cassius setfiletype cassius
au BufRead,BufNewFile *.julius setfiletype julius
au BufRead,BufNewFile *.lucius setfiletype lucius

execute pathogen#infect()
filetype plugin indent on
" switch on syntax highlighting
syntax on
" vim-latex:
" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" configure browser for haskell_doc.vim
let g:haddock_browser = "google-chrome"
