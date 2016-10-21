" moves the .vimrc and other files into the roaming user profile
if has('win32') || has('win64')
        let &shell='cmd.exe'
        "set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        "echo tempname();
        set guifont=Hack\ 12
        set antialias
endif
"let &shell='/usr/bin/bash'

set nocompatible

" -- Display
set title                 " Update the title of your window or your terminal
set number                " Display line numbers
set ruler                 " Display cursor position
set wrap                  " Wrap lines when they are too long

set scrolloff=3           " Display at least 3 lines around you cursor
                          " (for scrolling)

set guioptions=T          " Enable the toolbar


set shortmess=a
set cmdheight=2
set laststatus=2
set ignorecase
set smartcase
set incsearch
set hlsearch
set smartcase
set smartindent
set showcmd
filetype on
filetype plugin on
filetype indent on


" -- Beep
set visualbell            " Prevent Vim from beeping
set noerrorbells          " Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden


syntax enable
set background=dark
colorscheme koehler
"colorscheme solarized
"
:highlight LineNr ctermfg=darkgrey
"let g:solarized_termcolors=256

let mapleader = ","

" https://www.youtube.com/watch?v=XA2WjJbmmoM

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" $HOME/.vimrc
" set directory=$HOME/.vim/swapfiles//

" https://github.com/junegunn/vim-plug

"call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

call plug#begin('~/.vim/plugged')
Plug 'avakhov/vim-yaml'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"Plug 'tpope/vim-sensible'

" Add plugins to &runtimepath
call plug#end()

" Syntastic syntax checker settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline status bar settings
" let g:airline#extensions#tabline#enabled = 1

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
