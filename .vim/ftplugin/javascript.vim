" Syntax highlighting
packadd vim-javascript

" Parser
packadd vim-jsbeautify

" Format the current javascript file
" The configs are set by the file in g:editorconfig_Beautifier
nnoremap <buffer> <C-f> :call JsBeautify()<CR>
vnoremap <buffer> <C-f> :call RangeJsBeautify()<CR>

" Indentation like java
" setlocal noexpandtab shiftwidth=4 softtabstop=4 tabstop=4
setlocal noexpandtab shiftwidth=2
