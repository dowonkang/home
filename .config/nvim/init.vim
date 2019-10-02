" fish shell may not be compatible with vim
" https://github.com/dag/vim-fish#teach-a-vim-to-fish
if &shell =~# 'fish$'
	set shell=sh
endif

" vim-plug
" https://github.com/junegunn/vim-plug
" :PlugInstall to install plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
Plug 'junegunn/goyo.vim'
Plug 'dag/vim-fish'
call plug#end()

" Automatically reload vimrc after save
augroup AutoSource
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC | redraw
augroup END

" Show line numbers
" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup AutoRelativeNumber
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Show cursor position
set ruler

" Cursor line
set cursorline

" Wrap lines
set nowrap

" Highlight matching brace
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell

" Enable smart-case search
set smartcase

" Enable smart-indent
set smartindent

" Enable smart-tabs
set smarttab

" Number of spaces per Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Use spaces instead of tabs
"set expandtab
" or not
set noexpandtab

" Number of undo levels
set undolevels=1000

" Invisible characters
highlight Whitespace ctermfg=DarkGray
highlight NonText ctermfg=DarkGray
set listchars=tab:▸\ ,space:·,eol:¬
set list

" Enable syntac highlighting
syntax enable
