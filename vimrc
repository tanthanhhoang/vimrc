set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

set shortmess +=c

syntax on
colorscheme delek 

" General Settings
"
set number                 " Display line numbers
set relativenumber         " Hybrid line number display
set showcmd                " Display commands as they are typed
set autoindent             " Turn on auto indenting
set ttyfast                " Draw screen quickly
set wildmenu               " Show matches in command auto-completion
set showmatch              " Jump to open when closing bracket is typed
set incsearch              " Do incremental searching
set ignorecase             " Ignore case in search patterns
set smartcase              " Case-sensitive search only on uppercase character
set hlsearch               " Highlight search matches
set encoding=utf-8         " Handle Unicode files
set autoread               " Automatically reload file if its changed
set visualbell             " Flash display instead of beeping
set tags=tags;/            " Look for tags in current directory and upward search up to root
set laststatus=2           " Always show status line
set cmdheight=1            " Height of command line
set history=1000           " Number of old commands to remember
set ruler                  " Always show cursor position
set title                  " Vim sets window title
set nomodeline             " Ignore Vim settings embedded in source files
set mouse=a                " Enable mouse in terminal Vim
set backup                 " Enable backup of edited files
set gdefault               " Substitute in entire line by default
set virtualedit=block      " Allow virtual editing in Visual mode
set nrformats-=octal       " Disable inc/dec of octal numbers
set ttimeout               " Enable timeout for commands
set ttimeoutlen=100        " Do not wait too long for command completion
set display+=lastline      " Display as much as possible of last line i window
set formatoptions+=j       " Join commented lines intelligently
set hidden                 " Allow opening new buffer when current one is unsaved
set mousemodel=popup       " Right-button of mouse works like in Windows, not X

"write and quit short key
nnoremap wq <Esc>:wq<CR>
"quite shortkey
nnoremap qq <Esc>:q!<CR>

"-------------------------------------------------------------------"

set clipboard+=unmaed
set paste
set go+=a

""" Airline
"set airline color
set t_Co=256
let g:airline_theme='term'

" Show buffers as tabs
let g:airline#extensions#tabline#enabled = 1

" Show full path in statusline
let g:airline_section_c = '%F'

" In X, we can use fancy colors and Unicode symbols
if &term =~ "xterm" || has ("gui_running")

		" Define dict before settings symbols in it
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    let g:airline_left_sep = '»'
	  let g:airline_left_sep = '▶'
	  let g:airline_right_sep = '«'
	  let g:airline_right_sep = '◀'
	  let g:airline_symbols.linenr = '␊'
	  let g:airline_symbols.linenr = '␤'
	  let g:airline_symbols.linenr = '¶'
	  let g:airline_symbols.branch = '⎇'
	  let g:airline_symbols.paste = 'ρ'
	  let g:airline_symbols.paste = 'Þ'
	  let g:airline_symbols.paste = '∥'
	  let g:airline_symbols.whitespace = 'Ξ'
    " Show buffers as tabs
    let g:airline#extensions#tabline#enabled      = 1

" In VT, we can only use simple ASCII and 8 color themes
else
	let g:airline_theme                           = 'hybrid'
    let g:airline_left_sep                        = ' '
    let g:airline_right_sep                       = ' '
    let g:airline#extensions#tabline#left_sep     = ' '
    let g:airline#extensions#tabline#left_alt_sep = ' '

endif

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
