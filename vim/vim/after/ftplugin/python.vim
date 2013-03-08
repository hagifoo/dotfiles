" PEP 8 indent rule
setl tabstop=8
setl softtabstop=4
setl shiftwidth=4
setl smarttab
setl expandtab
setl noautoindent
setl nosmartindent
setl textwidth=80

" Folding
setl foldmethod=indent
setl foldlevel=99

" Prevent auto line break
setl formatoptions=q

" Auto complete
set omnifunc=pythoncomplete#Complete

" Tag files
" set tags=$HOME/.tags/python.tag

" Flake 8
" E123: closing bracket does not match indentation of opening bracket's line
" E124 closing bracket missing visual indentation
" E125 continuation line does not distinguish itself from next logical line
" E302: 2blank lines required above function definition
" E501: line too long (<n> characters)
" W404: import * used; unable to detect undefined names
let b:flake8_ignore="E123,E124,E125,E302,E501,W404"
autocmd BufWritePost <buffer> call Flake8()
