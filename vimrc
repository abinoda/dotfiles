set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" -- vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim.git'
Bundle 'jiangmiao/auto-pairs'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'juvenn/mustache.vim'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'

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

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" -- rspec helpers
function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo
    exec ":!clear; bundle exec rspec " . a:filename
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_spec_file = match(expand("%"), '_spec.rb$') != -1
    if in_spec_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction

" Run this file
map <leader>m :call RunTestFile()<cr>
" Run only the example under the cursor
map <leader>. :call RunNearestTest()<cr>
" Run all test files
map <leader>a :call RunTests('spec')<cr>
