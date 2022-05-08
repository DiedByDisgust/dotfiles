set encoding=utf-8
set number
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set splitbelow

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set mouse=a

set background=dark

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"remaps
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
nnoremap <leader>] :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <F8> :TagbarToggle<CR>

"leters
let g:airline_theme='murmur'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:neomake_python_enabled_makers = ['pylint']
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"
let g:NERDTreeGitStatusUseNerdFonts=1
let g:deoplete#enable_at_startup=1

call plug#begin('~/.vim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'

call plug#end()

call neomake#configure#automake('nrwi', 500)

colorscheme gruvbox
