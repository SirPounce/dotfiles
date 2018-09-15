" Vim settings
filetype plugin indent on	"To allow file type recognition etc.   
set number	"Line numbers
syntax on	"Syntax Highlighting
set hidden

" Introduces black boarder to avoid long lines
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Show commands as they are being written
set showcmd

" Make it easier to see tabs and newlines
set list
set listchars=tab:▸\ ,eol:¬
" js beautifier required
let g:editorconfig_Beautifier = "~/.vim/.jsBeautifierConfig"

" Remap leader to space
let mapleader="\<Space>"
let maplocalleader="\<Space>"

" NERDTree settings
noremap <C-n> :NERDTreeToggle<CR>
augroup NERDTreeCommand
  autocmd!
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup end
let NERDTreeShowHidden=1

" Yank to clipboard settings
if has('clipboard')
  set clipboard^=unnamed
endif

" Fixing backspace over linebreak
set backspace=indent,eol,start

" Let vim store backup/swap/undo files in these directories
" The double // will create files with whole path expanded.
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set undodir=~/.vim/tmp/undo//

" " TeX settings
" set grepprg=grep\ -nH\ $*
" set sw=2
" set iskeyword+=:
" let g:tex_flavor = 'latex'

" " VimTeX settings
" let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
" let g:vimtex_view_general_options = '-r @line @pdf @tex'
" let g:vimtex_fold_enabled = 0 "for opening large files"
"

" Fugitive settings (git)
" -- Tpope fugitive commands --
" Starting with <leader>g for harmless commands
" Starting with <leader>G for potentially harmful commands

" Run git commit -u
nnoremap <leader>gu :silent! Git add -u<CR>:redraw!<CR>

" Add file corresponding to current buffer
nnoremap <leader>ga :Gwrite<CR>

" Open commit message in a new buffer
" --verbose so that the changes are visible
"  while in the commit message
nnoremap <leader>gc :Gcommit --verbose<CR>

" Revert current file to last checked in version
" Same as running git checkout %
nnoremap <leader>Gr :Gread<CR>

" Push the changes
nnoremap <leader>Gp :Gpush<CR>



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

" Tmux integration settings

" Prompt for a command to run in the nearest tmux pane
nnoremap <silent> <leader>tp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
nnoremap <silent> <leader>tr :call tmux#vimuxRunLastCommandIfExists()<CR>

" Inspect runner pane
nnoremap <silent> <leader>ti :VimuxInspectRunner<CR>

" Zoom the tmux runner pane
nnoremap <silent> <leader>tz :VimuxZoomRunner<CR>

" Fzf mappings
" files
nnoremap <leader> ff:<C-u>FZF<CR>
" Git
nnoremap <leader> fg:GFiles<CR>
" Snippets
nnoremap <leader> fg:Snippets<CR>
