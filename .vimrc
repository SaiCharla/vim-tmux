syntax on
set tabstop=4
autocmd Filetype python setlocal expandtab
syntax on
filetype indent on
set nowrap
set ruler
set showcmd
set cursorline
set showmatch
set incsearch
set hlsearch
set textwidth=79
autocmd BufWritePre * %s/\s\+$//e
set encoding=utf-8
set fileencoding=utf-8
colorscheme codedark
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

highlight SELF ctermfg=blue
match SELF /self/
