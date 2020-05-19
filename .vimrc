" Welcome in the current century
set nocompatible 
syntax on

call plug#begin('~/.vim/plugged')
Plug 'elmcast/elm-vim'
Plug 'wakatime/vim-wakatime'
call plug#end()
"" Plugin config
" Plugin elm-vim
let g:elm_format_autosave = 1

"" Upgrading default vim
" Hybrid line numbering
set number relativenumber

" Move around splits in one command
nmap <silent> <c-s-k> <C-W>k
nmap <silent> <c-s-j> <C-W>j
nmap <silent> <c-s-h> <C-W>h
nmap <silent> <c-s-l> <C-W>l

"" Templates
" LaTeX
nnoremap ,tex :-1read $HOME/.vim/templates/.latex.tex<CR>

"" Automation
" LaTeX make pdf on save
autocmd BufWritePost *.tex silent! execute "!pdflatex --output-directory=./build % > /dev/null 2>&1" | redraw!

