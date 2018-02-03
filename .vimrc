" Vim settings
set nocompatible	"Turning off compatible mode          
filetype plugin indent on	"To allow file type recognition etc.   
set number	"Line numbers
syntax on	"Syntax Highlighting

" Show commands as they are being written
set showcmd

	    " Make it easier to see tabs and newlines
set list
set listchars=tab:▸\ ,eol:¬
" Make it possible to delete tabs etc.
set backspace = indent, start
" js beautifier required
let g:editorconfig_Beautifier = "~/.vim/.jsBeautifierConfig"

" TeX settings
set grepprg=grep\ -nH\ $*
set sw=2
set iskeyword+=:
let g:tex_flavor = 'latex'

" " VimTeX settings
" let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
" let g:vimtex_fold_enabled = 0 "for opening large files"



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


