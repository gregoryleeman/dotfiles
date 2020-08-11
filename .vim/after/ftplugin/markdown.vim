set completeopt=noinsert,menuone,noselect
setlocal sw=2 ts=2 sts=2 autoindent expandtab
setlocal wrap
setlocal breakindent
setlocal breakindentopt=shift:2

function! FoldLevelMd(lnum)
	let line = getline(a:lnum)
	if line =~ "^#"
		let level = len(matchstr(line, "^#*"))
		if level > 1
			let fold = level - 1
			return ">".fold
		endif
	elseif line =~ "^\s*$"
		return -1
	endif
	return "="
endfunction

function! FoldTextMd()
	let line = getline(v:foldstart)
	let foldsize = (v:foldend - v:foldstart)
	" return line." [".foldsize."] +".repeat(" ", winwidth(0))
	return line." +".repeat(" ", winwidth(0))
endfunction

setlocal foldmethod=expr
setlocal foldexpr=FoldLevelMd(v:lnum)
setlocal foldtext=FoldTextMd()

call ncm2#enable_for_buffer()
