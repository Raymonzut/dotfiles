" Welcome in the current century
set nocompatible 
syntax on

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

