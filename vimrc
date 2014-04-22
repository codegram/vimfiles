" vimrc
" Author: Codegram
" Source: https://github.com/codegram/vimfiles

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" ----------
" Leader key
" ----------
let mapleader = ","
let maplocalleader = "."

" -------
" BUNDLES
" -------
"
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-surround'
Bundle 'Townk/vim-autoclose'
Bundle 'jmartindf/vim-tcomment'
Bundle 'kien/ctrlp.vim'

Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" Clojure
Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-fireplace'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'

Bundle 'sheerun/vim-polyglot'

Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

Bundle 'vim-scripts/ctags.vim'
Bundle 'majutsushi/tagbar'

Bundle 'gcmt/wildfire.vim'
Bundle 'tpope/timl'

" Default color theme
Bundle 'sjl/badwolf'
colorscheme badwolf

" ------------
" VIM SETTINGS
" ------------

set autoread
set backspace=indent,eol,start
set completeopt=menuone,preview
set expandtab
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set gdefault
set laststatus=2
set list
set listchars=trail:·
set modelines=5
set nobackup
set noeol
set nofoldenable
set noswapfile
set number
set numberwidth=4
set ruler
set shell=/bin/bash
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set tabstop=2
set softtabstop=2
set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set textwidth=78
set wildignore+=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.gitkeep,.DS_Store
set formatoptions=n
set colorcolumn=78
set tw=78
set t_Co=256

if has("gui_running")
    set guioptions-=T " no toolbar
    set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
endif
set guifont=Monaco:h12

" Autocommands depending on file type
autocmd BufWritePre * :%s/\s\+$//e " strip trailing whitespace

" --------
" MAPPINGS
" --------

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

imap jk <ESC>

" Search
nmap <Space> /
nnoremap / /\v
vnoremap / /\v

" Clear search
nnoremap <leader><space> :noh<cr>

" Saving and buffer stuff
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>

" Switch between / delete buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" Splits
nnoremap <leader>v :vs<CR> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Paste mode
set pastetoggle=<F2>

" Rename current file
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

" ----------------
" PLUG-IN SETTINGS
" ----------------

" Ag (Regex-based search)
nmap <leader>a :Ag
" Rotating among results
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Fugitive (Git)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
vmap <leader>gb :Gblame<CR>

" TComment
map <Leader>co :TComment<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" Ctags
" You can use Ctrl-] to jump to a function.... Ctrl-p will jump back
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <C-p> :pop<CR>

" You can cycle through multiple function definitions using
" these mappings. This maps to my windows key + left/right arrows
map <F7> :tnext<CR>
map <F9> :tprev<CR>

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

colorscheme badwolf

nmap gh <Plug>GitGutterNextHunk
nmap gH <Plug>GitGutterPrevHunk

syntax on
filetype indent plugin on

" Vim Gist
let g:gist_clip_command = 'pbcopy'
" let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1

" Ctrlp.vim
let g:ctrlp_map = '<leader>o'
let g:ctrlp_working_path_mode = 'ra'
map <leader>c :CtrlPTag<cr>

" Clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" --------------------
" CUSTOM CONFIGURATION
" --------------------
let my_home = expand("$HOME/")
if filereadable(my_home . '.vimrc.local')
  source ~/.vimrc.local
endif
