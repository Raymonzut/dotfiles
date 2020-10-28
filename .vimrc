" Welcome in the current century
set nocompatible 
filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/Vimclojure'
Plug 'vimwiki/vimwiki'
Plug 'wakatime/vim-wakatime'
call plug#end()
"" Plugin config
" Plugin jellybeans.vim
colorscheme jellybeans

" Plugin vimwiki (for clarity)
let g:vimwiki_list = [{'path': '~/vimwiki/'}]

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
" Haskell compiling and checking for improvements
autocmd BufWritePost *.hs execute "!ghc --make % -Wall && hlint %"

"" Clojure
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1
