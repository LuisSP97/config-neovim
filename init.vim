call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'dikiaap/minimalist'
Plug 'preservim/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jelera/vim-javascript-syntax'
Plug 'jiangmiao/auto-pairs'
call plug#end()

set t_Co=256
syntax on
colorscheme minimalist

autocmd vimenter * NERDTree

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

map <C-n> :NERDTreeToggle<CR>

let g:deoplete#enable_at_startup = 1
