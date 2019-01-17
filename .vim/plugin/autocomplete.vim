" YOU COMPLETE ME

" Always use Python 3
let g:ycm_python_binary_path = 'python3'

" Don't open a buffer containing information about the completion
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" Fallback global conf for c location
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" Use ctags files for autocompletion
let g:ycm_collect_identifiers_from_tags_files = 1

" Cycle setting for completion
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
