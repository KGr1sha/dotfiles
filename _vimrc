" SETTINGS
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set undodir="~/.vim/.undo"
set undofile

set shiftwidth=4
set tabstop=4
set smartindent
set number
set relativenumber 
set scrolloff=6
set wildmenu
set showmode
set guifont=Consolas:h16
set path+=**
" netrw
let g:netrw_banner=0 " no big banner
let g:netrw_liststyle=3 " tree style
let g:netrw_altv=1 " open to the right with vsplit
" gvim
set guioptions=Ace 

filetype plugin on
" PLUGINS
call plug#begin()
" color
Plug 'widatama/vim-phoenix'
Plug 'ayu-theme/ayu-vim'

call plug#end()

" COLOR
set termguicolors
let g:phoenix_invert_match_paren = 1
colorscheme ayu  
" PhoenixRed 
" available colors: Blue, Red, Green, Yellow, Orange, Purple

" CURSOR
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" MAPPINGS
" center when C-d and C-u
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" ctags jumping
nnoremap gd <C-]>
nnoremap gr g]
" generage ctags
:command -nargs=1 MakeCtags :!ctags -R <args>
" snippets
nnoremap ,mb :-1read C:\Program Files\Vim\snippets\monobeh.cs<CR>2j2wciw
