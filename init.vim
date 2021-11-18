""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
"Plug 'romgrk/barbar.nvim'
Plug 'Numkil/ag.nvim'
Plug 'itchyny/lightline.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'psliwka/vim-smoothie'
Plug 'mbbill/undotree'
" Themes
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-guicolors'
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set commands and key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

let mapleader="\<space>"

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

nmap <C-g> :Git<space>
" Resize
nmap <C-j> :resize +1<CR>
nmap <C-k> :resize -1<CR>
nmap <C-h> :vertical resize -1<CR>
nmap <C-l> :vertical resize +1<CR>
" Shortcut to put ; at the end of the line
nmap <leader>; A;<esc>
" NERDTree
nmap <C-n> :NERDTreeToggle<CR>
" NERDCommenter
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
" UndoTree
nnoremap <F5> :UndotreeToggle<CR>
