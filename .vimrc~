set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" HTML CSS JSON etc formatter
Plugin 'maksimr/vim-jsbeautify'

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Python autofill and stuffs
Plugin 'Valloric/YouCompleteMe'

" Latex Plugins

" VimTex Plugin for most latex functionality
Plugin 'lervag/vimtex'

" VUNDLE END!
"
call vundle#end()            " required

" Vim settings
filetype plugin indent on    " required

	" Line numbers
set number

	" Syntax highlighting
syntax on

	" Make it easier to see tabs and newlines
"set list
"set listchars=tab:▸\ ,eol:

" js beautifier required
let g:editorconfig_Beautifier = "~/.vim/.jsBeautifierConfig"

" Show commands as they are being written
set showcmd

" TeX settings
set grepprg=grep\ -nH\ $*
set sw=2
set iskeyword+=:
let g:tex_flavor = 'latex'

" VimTeX settings
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_fold_enabled = 0 "for opening large files"



if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
if has('syntax') && has('eval')
  packadd matchit
endif


