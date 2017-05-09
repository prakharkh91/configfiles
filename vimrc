"autocmd InsertEnter * : silent exec "!printf '\033]50;CursorShape=2\x7'" | exec ":redraw!"
"autocmd InsertLeave * : silent exec "!printf '\033]50;CursorShape=0\x7'" | exec ":redraw!"
"
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


filetype plugin on
set omnifunc=syntaxcomplete#Complete
set relativenumber



set nocompatible              " required
filetype off                  " required

" Plugins

"call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"
" " Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" " Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
" " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
"
" " Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
" " Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
"
" " Add plugins to &runtimepath

"Plug 'davidhalter/jedi-vim'  " Python autocomplete

"Plug 'klen/python-mode'     " Python autocomplete

Plug 'Valloric/YouCompleteMe' "C autocomplete YCM

"Plug 'lervag/vimtex'   "vim latex

call plug#end()

"Key Remaps
		" Standard Keys
				
				nnoremap ; :

		" Control Keys
			"	map      <C-w>o ;tab sp<CR>
				map <space>q  <c-W>q
        map <space>H  <c-W>H
        map <space>J  <c-W>J
        map <space>K  <c-W>K
        map <space>L  <c-W>L
        map <space>h  <c-W>h
        map <space>j  <c-W>j
        map <space>k  <c-W>k
        map <space>l  <c-W>l
        map <space>w  <c-W>w
				map <space>W  <c-W>W

filetype plugin indent on    " requiredi

syntax on
set background=dark
set ruler                     " show the line number on the bar
set more                      " use more prompt
set autoread                  " watch for file changes
set modifiable
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set tabstop=2                 " 6 spaces
set shiftwidth=2
set scrolloff=5               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right
set history=200
set backspace=indent,eol,start
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set ttyfast                   " we have a fast terminal
set noerrorbells              " No error bells please
set shell=bash
set fileformats=unix
set ff=unix
set nohlsearch

filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin on            " Enable filetype-specific plugins
set wildmode=longest:full
set wildmenu                  " menu has tab completion
let maplocalleader=','        " all my macros start with ,
set laststatus=2
set hls
set number
set ai
set noswapfile
set foldmethod=syntax
"set spell spelllang=en_us

"  searching
 set incsearch                 " incremental search
 set ignorecase                " search ignoring case
 set hlsearch                  " highlight the search
 set showmatch                 " show matching bracket
 set diffopt=filler,iwhite     " ignore all whitespace and sync

"  " spelling
 if v:version >= 700
    " Enable spell check for text files
      autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en
endif
" mappings
" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>

"function! CFoldLevel(lnum)
"  let line = getline(a:lnum)
"  if line =~ '^/\*'
"    return '>1' " A new fold of level 1 starts here.
"  else
"    return '1' " This line has a foldlevel of 1.
"  endif
"endfunction
"
"function! CFoldText()
"  " Look through all of the folded text for the function signature.
"  let signature = ''
"  let i = v:foldstart
"  while signature == '' && i < v:foldend
"    let line = getline(i)
"    if line =~ '\w\+(.*)$'
"      let signature = line
"    endif 
"    let i = i + 1
"  endwhile
"
"  " Return what the fold should show when folded.
"  return '+-- ' . (v:foldend - v:foldstart) . ' Lines: ' . signature . ' '
"endfunction
"
"function! CFold()               
"  set foldenable
"  set foldlevel=0   
"  set foldmethod=expr
"  set foldexpr=CFoldLevel(v:lnum)
"  set foldtext=CFoldText()
"  set foldnestmax=1
"endfunction
let g:livepreview_previewer = 'okular'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PYTHON IDE
set splitbelow
set splitright
" split navigations
" Ctrl-j move to the split below
" Ctrl-k move to the split above
" Ctrl-l move to the split to the right
" Ctrl-h move to the split to the left

noremap <C-J> <C-W><C-j>
noremap <C-K> <C-W><C-k>
noremap <C-L> <C-W><C-l>
noremap <C-H> <C-W><C-h>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Python Indentation
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"   \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
"
" Bad whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python Auto Indent
Plug 'vim-scripts/indentpython.vim'
" Python3 dev should be done with utf-8 encoding
set encoding=utf-8
" Python Autocomplete
Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" The former line ensures that the autocomplete window goes away when you’re done with it,
" and the latter defines a shortcut for goto definition.
" My leader key is mapped to space, so space-g will goto definition of whatever
" I’m currently on. Helpful when exploring new code.


" Making VIM awake for Virtual env
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" Syntax highlighting
Plug 'scrooloose/syntastic'
" pep8  checking
Plug 'nvie/vim-flake8'

" Make code look pretty
let python_highlight_all=1
syntax on

colorscheme delek
" Color scheme and shit
" Plug 'jnurmine/Zenburn'
" Plug 'altercation/vim-colors-solarized'
" if has('gui_running')
"    set background=dark
"    colorscheme solarized
" endif

" Nerd tree for file browsing
Plug 'scrooloose/nerdtree'
" Nerd tree tabs
Plug 'jistr/vim-nerdtree-tabs'
" Hide pyc files
let NERDTreeIgnore=['\.pyc$', '\~$']

"As expected, press Ctrl-P to enable the search and then just start typing.
"If your search matches anything close to the file you’re looking for, it will find it.
"Oh – and it’s not just files; it will find tags as well!
Plug 'kien/ctrlp.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Powerline
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
