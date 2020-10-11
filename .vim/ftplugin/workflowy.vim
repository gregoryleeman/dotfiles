function! IndentLevel(lnum)
	return indent(a:lnum) / &shiftwidth
endfunction
function! FoldLevel(lnum)
	if indent(a:lnum + 1) > indent(a:lnum)
		return '>' . indent(a:lnum + 1) / &shiftwidth
	endif
	return indent(a:lnum) / &shiftwidth
endfunction
setlocal sw=4 ts=4 sts=4 autoindent 
setlocal formatoptions=""
setlocal iskeyword+=#
setlocal iskeyword+=@-@
setlocal iskeyword+=-
setlocal iskeyword+=:
setlocal nonumber
setlocal foldexpr=FoldLevel(v:lnum)
setlocal foldmethod=expr
