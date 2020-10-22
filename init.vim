call plug#begin('~/AppData/Local/nvim/plugged')

"Plugins auxiliares
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sickill/vim-monokai'

"Plugins autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plugins Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'othree/javascript-libraries-syntax.vim'

"Plugins HTML/CSS
Plug 'mattn/emmet-vim'

call plug#end()

"General config

"Indica al terminal que tiene 256 colores
if has("gui_running")
    set t_Co=256
end

"Activa vim-monokai
syntax enable
colorscheme monokai

"Ajusta el espacio de las tabulaciones
set tabstop=4 shiftwidth=4 expandtab

"NERDTree config
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1 

"Emmet-vim config
let g:user_emmet_leader_key='<C-M>'
