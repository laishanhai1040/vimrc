" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

syntax on
syntax enable
set t_Co=256
set background=dark
colorscheme molokai

set number

set cindent
set smartindent

set backspace=indent,eol,start

set expandtab

set tabstop=4
set shiftwidth=4

set smarttab
set softtabstop=4

set expandtab


set incsearch
set hlsearch

set nocompatible

set ruler

set showcmd

set history=1000

set nobackup
set noswapfile

set showmatch

set ignorecase

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

filetype off
filetype indent on
filetype plugin on
filetype plugin indent on

"*************************************************************************
"                    vundle
"**************************************************************************

set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install install plugins
" call vundle#begin('~/some/path/here')
"

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" My Bundle here

Plugin 'Lokaltog/vim-easymotion'
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
Plugin 'Syntastic'
Plugin 'L9'
Plugin 'ervandew/supertab'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/html5.vim'
Plugin 'Shougo/neocomplcache.vim'

" All of your Plugins must be added before tht fllowing line

call vundle#end()                       " Require
filetype plugin indent on               " Require
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList           - lists configured plugin
" :PluginInstall        - installs plugins; append '!' to update or just
"                         :PluginUpdate
" :PluginSearch foo     - searchs for foo; append '!' to refresh local cache
" :PluginClean          - confirms removal of unused plugins; append '!' to
"                         auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-plugin struff after this line

"***********************************************************************************
"               taglist
"**********************************************************************************

let Tlist_Compact_Format=1

let Tlist_Use_Right_Window=1

let Tlist_Show_One_File=1

let Tlist_Auto_Highlight_tag=1

let Tlist_Auto_Update=1

let Tlist_WinWidth=30

let Tlist_Exit_OnlyWindow=1

let Tlist_Exit_Only_Window=1

let Tlist_Use_SingleClick=1

nnoremap <silent> <F8> :TlistToggle<CR>


"***********************************************************************************
"               NERD_Tree
"***********************************************************************************

let NERDTreeChristmasTree=1

let NERDTreeAuto_Center=1

let NERDTreeMouseMode=2

let NERDTreeQuitOnOpen=1

let NERDTreeShowHidden=1

let NERDTreeHightCursorline=1

let NERDTreeShowLineNumbers=1

let NERDTreeWinPos='left'

let NERDTreeWinSize=31

let NERDTreeMinimaUI=1

nnoremap <silent> <F4> :NERDTreeToggle<CR>


"***********************************************************************************
"               Syntastic
"************************************************************************************

let g:Syntastic_check_on_open=1


"**********************************************************************************
"               vim-airline
"*********************************************************************************

set laststatus=2

let g:airline_powerline_fonts = 1
"let g:airline#extensions#tableline#enable = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='powerlineish'

"***********************************************************
"           html5
"************************************************************

let g:html5_event_handler_attribute_complete = 0

"***************************************************************
"       neocompletecache
"****************************************************************


let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

inoremap <expr> <C-g>   neocomplcache#undo_complrtion()
inoremap <expr> <C-l>   neocomplcache#complete_common_string()

inoremap <expr><C-h>    neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>     neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>    neocomplcache#close_popup()
inoremap <expr><C-e>    noeocomplcache#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#completeCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#completeTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#completeJS
autocmd FileType python setlocal omnifunc=pythoncomplete#complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#completeTags

"***************************************************************************
"           supertab
"*********************************************************************************

let g:SuperTabDefaultCompletionType="context"
