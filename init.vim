""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'Numkil/ag.nvim'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'psliwka/vim-smoothie'
Plug 'mbbill/undotree'
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartcase
set noswapfile
set incsearch
set spelllang=en_us
set relativenumber
set mouse=a
" copy paste
set clipboard=unnamedplus
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" background and colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

set termguicolors
set background=dark
colorscheme nightfly

" Vimscript initialization file
let g:nightflyItalics = 0
" Lightline params
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

" C++ highlight params
let g:completor_racer_binary = '/home/vinicius/anaconda3/bin/python'
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}

let g:ale_virtualtext_cursor = 'disabled'


" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set commands and key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

let mapleader="\<space>"

" mark number of columns (79)
set colorcolumn=79

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" Save and quit keybindings
nmap <C-s> :w<cr>
nmap <C-q> :q<cr>

" Git commands
nmap <C-g> :Git<space>
" Resize
nmap <C-j> :resize +1<CR>
nmap <C-k> :resize -1<CR>
nmap <C-h> :vertical resize -1<CR>
nmap <C-l> :vertical resize +1<CR>
" Shortcut to put ; at the end of the line
nmap <leader>; A;<esc>
nmap <leader>io I#include <stdio.h><CR><esc>
nmap <leader>lib I#include <stdlib.h><CR><esc>
nmap <leader>inc I#include
nmap <leader>def I#define
" Shortcut to add ::
nmap <leader>: A::
" Add single comma and double comma at the end of the line
nmap <leader>' i'<esc>w'<esc>
nmap <leader>" i"<esc>w"<esc>
" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
nmap <leader>% i %>%  
nmap <leader>< A<- 
nmap <leader>> A->
" NERDCommenter
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" UndoTree
nnoremap <F5> :UndotreeToggle<CR>
" Select all
nnoremap <C-A> ggVG
