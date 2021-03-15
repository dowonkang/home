" Teach a Vim to fish...
" See https://github.com/dag/vim-fish#teach-a-vim-to-fish
if &shell =~# 'fish$'
  set shell=sh
endif

" Highlight the line of the cursor
set cursorline

" Indentation
set smartindent
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab " spaces instead of tabs
" set noexpandtab " tabs instead of spaces

" Show cursor position
set ruler

" No line wrapping
set nowrap

" Highlight matching braces
set showmatch

" No bells
set noerrorbells
set novisualbell

" The invisibles
highlight Whitespace ctermfg=DarkGray
highlight NonText ctermfg=DarkGray
" set listchars=tab:▸\ ,space:·,eol:¬
set listchars=tab:▸\ ,eol:¬
set list

" Enable smart-case search
set smartcase

" Enable syntax highlighting
syntax enable

" Automatically reload $MYVIMRC after save
augroup AutoSource
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC | redraw
augroup END

" Smart line number
set number relativenumber
augroup SmartLineNumber
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

"Automatically install vim-plug
let s:sep = has('win32') ? '\' : '/'
let s:datapath = stdpath('data')
let s:sitepath = s:datapath . s:sep . 'site'
let s:pluggedpath = s:datapath . s:sep . 'plugged'
let s:vimplugpath = s:sitepath . s:sep . 'autoload' . s:sep . 'plug.vim'
let s:vimplugremote = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

if empty(glob(s:vimplugpath))
  if has('win32')
    silent execute '!powershell -Command "'
          \ . 'New-Item -Path ' . s:sitepath . ' -Name autoload -Type Directory -Force;'
          \ . 'Invoke-WebRequest'
          \ . ' -Uri ' . s:vimplugremote
          \ . ' -OutFile ' . s:vimplugpath
          \ . '"'
  else
    silent execute '!curl -fLo ' . s:vimplugpath . ' --create-dirs ' . s:vimplugremote
  endif
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install missing plugs
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source $MYVIMRC
      \| endif

" Plug
call plug#begin(s:pluggedpath)
  Plug 'tpope/vim-sensible'
  Plug 'morhetz/gruvbox'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'dag/vim-fish'
call plug#end()

" Use 24-bit colors in terminal
if (has("termguicolors"))
  set termguicolors
endif

" Color scheme
set background=light
autocmd VimEnter * ++nested colorscheme gruvbox

