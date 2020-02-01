set encoding=utf-8
set fileencoding=utf-8
syntax enable	" enable syntax processing
set tabstop=4	" number of visual spaces per TAB
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
set background=dark


"Enable spell check for tex and text files and underline the misspent
set spell spelllang=en_us
set complete+=kspell  "auto complete with directory word when spell check is on
hi clear SpellBad
augroup spellcheckline
	autocmd!
	autocmd Filetype text hi SpellBad cterm=underline
	autocmd Filetype tex hi SpellBad cterm=underline
	autocmd Filetype plaintex hi SpellBad cterm=underline
	autocmd Filetype org hi SpellBad cterm=underline
augroup END


"Set wrap for latex and text files
"augroup settingwrap
"	autocmd!
	" autocmd Filetype text set wrap linebreak tw=0
"	autocmd Filetype tex set wrap linebreak tw=0
"	autocmd Filetype org set wrap linebreak tw=0
	" autocmd Filetype plaintex set wrap linebreak tw=0
"augroup END


" To adaptive-ly toggle between relative number and number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Hi-light self in python
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

" no indent for text and plain text
"augroup remautoindent
"	autocmd!
"	autocmd Filetype text set noautoindent
"	autocmd Filetype plaintex set noautoindent
"augroup END

"Expand tabs for specific files
augroup expandthetabs
	autocmd!
	autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
	autocmd Filetype text setlocal expandtab tabstop=4 shiftwidth=4
	autocmd Filetype plaintex setlocal expandtab tabstop=4 shiftwidth=4
augroup END

