set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set encoding=utf-8
set fileencoding=utf-8
syntax enable	" enable syntax processing
set tabstop=4	" number of visual spaces per TAB
"expandtabs in python files only
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
set autoindent
set shiftwidth=4	" Size of indent
set number relativenumber	" show line numbers
set ruler
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
filetype plugin indent on	" load filetype-specific indent files
set showmatch	" highlight matching [{()}]
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
set ignorecase
set smartcase
set nowrap
set textwidth=79
set fileformat=unix
autocmd BufWritePre * %s/\s\+$//e	"Remove trailing white spaces.
colorscheme codedark
set t_Co=256
set background=dark

"Enable spell check for tex and text files and underline the missspellt
set spell spelllang=en_gb
augroup spellcheckline
	autocmd!
	autocmd Filetype text hi SpellBad cterm=underline
	autocmd Filetype tex hi SpellBad cterm=underline
	autocmd Filetype plaintex hi SpellBad cterm=underline
augroup END


"Set wrap for latex and text files
augroup settingwrap
	autocmd!
	" autocmd Filetype text set wrap linebreak tw=0
	autocmd Filetype tex set wrap linebreak tw=0
	" autocmd Filetype plaintex set wrap linebreak tw=0
augroup END


" To adaptively toggle between relativenumber and number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Hilight self in python
augroup selfhighlight
	autocmd!
	autocmd Filetype python highlight SELF ctermfg=blue
	autocmd Filetype python match SELF /self/
augroup END


" Leader <leader>
let mapleader=','

" Open vimrc with key strokes
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" no intent for text and plain text
augroup remautoindent
	autocmd!
	autocmd Filetype text set noautoindent
	autocmd Filetype plaintex set noautoindent
augroup END

" YouCompleteMe plugin
Plugin 'valloric/youcompleteme'
