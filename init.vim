" Specify a directory for plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Numkil/ag.nvim'
Plug 'itchyny/lightline.vim'
" Themes
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-guicolors'
call plug#end()

set hidden
set number
set relativenumber
set mouse=a

" background and colorscheme
set termguicolors
set background=dark
colorscheme nightfly

" Set commands
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
" NERDCommenter
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Vimscript initialization file
let g:nightflyItalics = 0
" Lightline configs
let g:lightline = {
      \ 'colorscheme': 'nightfly',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let mapleader="\<space>"
