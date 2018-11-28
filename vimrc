set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" -- vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim.git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()                 " required
filetype plugin indent on         " required for vundle
syntax on                         " turn on syntax highlighting

autocmd BufWritePre * :%s/\s\+$//e

" -- general settings
let mapleader = ","
set showcmd                       " display incomplete commands
set showmode                      " display the mode you're in
set guioptions-=T                 " hide toolbar
set fillchars=                    " emply splitbars
set guifont=Inconsolata:h13       " set font

set timeout timeoutlen=3000 ttimeoutlen=100

set encoding=utf-8
set laststatus=2                  " always show the status line

set ignorecase
set smartcase

set number                        " show line numbers
set ruler                         " show cursor position
set numberwidth=5

set wrap
set cursorline
set title                         " set terminal title

set nobackup
set noswapfile

set hlsearch                      " highlight matches
set incsearch                     " highlight matches as you type

set tabstop=2                     " global tab width
set shiftwidth=2                  " and again, related
set expandtab                     " use spaces instead of tabs
set smarttab

set history=1000                  " remember more commands and search history
set undolevels=1000               " use many muchos levels of undo

set list
set listchars=tab:>-,trail:.      " display extra whitespace

set pastetoggle=<F2>

" -- theme
set t_Co=256
colorscheme railscasts
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0

" -- completion
set completeopt=longest,menu
set wildmode=list:longest,list:full
set wildignore+=.git,tmp,log,*.png,*.jpg,*.jpeg,*.gif,public/analytic,public/fonts,public/sounds,public/images,public/flash

" -- cntrl-p mappings
let g:ctrlp_map = '<Leader>t'
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
nmap ; :CtrlPBuffer<CR>

" -- pane mappings
map <Tab> <C-W>w
map <Leader>x :close<CR>
noremap <Leader>v :vs<CR>
noremap <Leader>h :sp<CR>

nnoremap <leader><leader> <c-^>     " switch between the last two files

" Disable arrow keys to enforce god habits
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" Rspec.vim mappings
map <Leader>. :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
