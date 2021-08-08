call plug#begin('~/.config/nvim/vim-plug')

Plug 'francoiscabrol/ranger.vim' " ranger plugin
Plug 'rbgrouleff/bclose.vim' " requireed to close bclose.vim
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " multiple cursors
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'spinks/vim-leader-guide'
Plug 'liuchengxu/vim-which-key'
Plug 'vim-syntastic/syntastic' " syntax checking plugin
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons' " adds icons to your plugins
Plug 'chrisbra/Colorizer' " A plugin to color colornames and codes
Plug 'tpope/vim-sleuth' " smart tabs
Plug 'editorconfig/editorconfig-vim' " A plugin to color colornames and code 
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin.
Plug 'https://github.com/junegunn/vim-github-dashboard.git' " Browse GitHub events (user dashboard, user/repo activity) in Vim.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' " contains snippets files for various programming languages
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file explorer
Plug 'Xuyuanp/nerdtree-git-plugin' " pretty icons 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Adds syntax highlighting to NERDTree based on filetype.
Plug 'PhilRunninger/nerdtree-buffer-ops' " Highlights open files in a different color. 2) Closes a buffer directly from NERDTree.
Plug 'PhilRunninger/nerdtree-visual-selection' " Enables NERDTree to open, delete, move, or copy multiple Visually-selected files at once.
Plug 'Xuyuanp/nerdtree-git-plugin' " Shows Git status flags for files and folders in NERDTree.
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' } " generates a list of compiler flags from a project
Plug 'fatih/vim-go', { 'tag': '*' } " adds Go language support
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' } " autocompletion daemon for go
Plug 'ghifarit53/sonokai' " sonokai themes stuffs 
" Plug 'itchyny/lightline.vim' " status bar
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " autocompletion daemon for vim
Plug 'junegunn/fzf.vim' " fuzzy file finder
Plug 'nekonako/xresources-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'projekt0n/github-nvim-theme' " nvim github theme
Plug 'deviantfero/wpgtk.vim' " wgptk theme
Plug 'hoob3rt/lualine.nvim'
Plug 'tweekmonster/startuptime.vim' " test startup time

call plug#end()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <C-space> coc#refresh()

"GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>

set expandtab
set tabstop=2
set shiftwidth=2

"key bindings"

noremap j h
noremap k j
noremap l k
noremap ; l

nnoremap <A-j> :call WinMove('h')<CR>
nnoremap <A-k> :call WinMove('j')<CR>
nnoremap <A-l> :call WinMove('k')<CR>
nnoremap <A-;> :call WinMove('l')<CR>

let g:python3_host_prog = '/usr/bin/python'
let g:java_host_prog = 'usr/bin/java'

" this part requirtes xmodmap on linux
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
 
" sets
syntax on
set mouse=a
set t_Co=256

set termguicolors
colorscheme github-dark
let g:colors_name = "github-dark"

autocmd VimEnter * ColorHighlight " apply color highlighting on startup "

nnoremap <leader>n :NERDTreeFocus<CR>nmap
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

 
