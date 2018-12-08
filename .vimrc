
" ~/.vimrc
"
" This is your Vim initialization file. It is read on Vim startup.
"
" Change this file to customize your Vim settings.
" 
" Vim treats lines beginning with " as comments.
"
" EXAMPLES are available in /usr/local/doc/startups.
"

"set color
colorscheme gruvbox
set background=dark

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on
xnoremap p pgvy
" xnoremap allows multiple pastes of same data
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Have Vim load indentation rules according to the detected filetype. Per
" default Debian Vim only load filetype specific plugins.
if has("autocmd")
  filetype indent on
endif
set number	       " Show line numbers
set showcmd            " Show (partial) command in status line.
set showmatch          " Show matching brackets.
set ignorecase         " Do case insensitive matching
set smartcase          " Do smart case matching
set incsearch          " Incremental search
set autowrite          " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a            " Enable mouse usage (all modes) in terminals
set tabstop=4	       " Set tabs from 8 to 4 spaces 
set shiftwidth=4
set expandtab
set foldmethod=marker
:imap jk <Esc>
:imap kj <Esc>
autocmd BufWritePost *.go normal! zv
packloadall	       " load all plugins
silent! helptags ALL   " load helptags
