" VIM settings file

" =======================================
" ========== Personal settings ==========
" =======================================

" ========== 1. plugin loader ==========

call plug#begin('~/.vim/plugged')       " The default plugin directory
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" ========== 2. general settings ==========

syntax enable           " highlight syntax

set nocompatible        " Disable compatibility with vi wich can cause unexpected issues.
set noswapfile          " disable swapfile
set expandtab           " Use space characters instead of tabs
set tabstop=4           " Set tabs to 4 spaces
set showcmd             " Show partial command you type in the last line of the screen
set showmode            " Show the mode you are on the last line
set number              " Show line numbers

filetype on             " Enable type file detection
filetype plugin on      " Enable plugin on
filetype indent on      " Load an indent file for the detected file type

" Remapping
inoremap kj <ESC>       " remap escape to jk

" searching
set hlsearch            " highlight all results
set ignorecase          " ignore case in search
set incsearch           " show search results as you type
set wildmenu            " visual autocomplete for command menu

" colors
set background=dark
colorscheme solarized

" ========== 3. leader key settings ==========

let mapleader=","               " set the leader key to the comma key
let maplocalleader=","          " set the local leader key to the comma key
map <leader>td :call ToggleThemeMode('dark')<CR>
map <leader>tl :call ToggleThemeMode('')<CR>
nnoremap <leader>o :Files<CR>
nnoremap <leader>km :Filetypes<CR>
nnoremap <leader>c :bp<BAR>bd#<CR>

" ========== 4. custom function ==========

" Toggles the theme from light to dark
function! ToggleThemeMode(style)
    if a:style == "dark"
        set background=dark
        let g:airline_theme='solarized'
        let g:airline_solarized_bg='dark'
        colorscheme solarized
    else
        set background=light
        let g:airline_theme='solarized'
        let g:airline_solarized_bg='light'
        colorscheme solarized
    en
endfunction

" ========== 5. plugin specific settings ==========

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1            " Enable the list of buffers
let g:airline#extensions#tabline#buffer_nr_show = 1     " Show the buffer number for each open buffer
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_solarized_bg='dark'

" ========================================
" ========== Temporary settings ==========
" ========================================
