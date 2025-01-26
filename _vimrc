" SETTINGS
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set undodir="~/.vim/.undo"
set undofile
set belloff=all

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
set laststatus=2
set statusline+=%f
" netrw
let g:netrw_banner=0 " no big banner
let g:netrw_liststyle=0 " 0: default 1: sorted by dates 2: wiered 3: tree 
let g:netrw_altv=1 " open to the right with vsplit
" gvim
set guioptions=Ace 
set guioptions+=!

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
let ayucolor="dark" " mirage | light
colorscheme ayu  
" PhoenixRed 
" available colors: Blue, Red, Green, Yellow, Orange, Purple

" CURSOR
set guicursor=n-v-c:block-Cursor-blinkoff0,i:ver25-lCursor-blinkoff0

" MAPPINGS
" center when C-d and C-u
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
" ctags jumping
nnoremap gd <C-]>
nnoremap gad g]
" generage ctags
command -nargs=1 MakeCtags :!ctags -R <args>
" snippets
nnoremap ,mb :-1read C:\Program Files\Vim\snippets\monobeh.cs<CR>2j2wciw

"build for handmade hero
nnoremap <C-b> :!build.bat<CR>
