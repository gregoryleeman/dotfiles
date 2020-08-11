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

fu! Search(search) " {{{
	execute "normal! /".a:search."\<CR>"
	:call SearchFold()
endfu " }}}
command! -nargs=1 Search :call Search(<f-args>) 
map <buffer> sa :Search \\[a\\]<CR>
map <buffer> sb :Search \\[b\\]<CR>
map <buffer> sc :Search \\[c\\]<CR>
map <buffer> so :Search \\[o\\]<CR>
map <buffer> sw :Search \\[w\\]<CR>
map <buffer> sm :Search \\[m\\]<CR>
map <buffer> sr :Search \\[r\\]<CR>
map <buffer> sx :Search \\[x\\]<CR>
map <buffer> sl :Search \\[l\\]<CR>
map <buffer> sn :Search @today<CR>

fu! Priority(line1, line2, prio) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/\\[".a:prio."\\]/[n]/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\[[^n]\\]/[".a:prio."]/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\[n\\]/[ ]/e\<CR>"
	:normal! `mj
endfu 

" }}}
command! -nargs=1 -range Priority :call Priority(<line1>, <line2>, <f-args>) 
map <buffer> <leader>a :Priority a<CR>
map <buffer> <leader>b :Priority b<CR>
map <buffer> <leader>c :Priority c<CR>
map <buffer> <leader>o :Priority o<CR>
map <buffer> <leader>s :Priority s<CR>
map <buffer> <leader>m :Priority m<CR>
map <buffer> <leader>w :Priority w<CR>
map <buffer> <leader>r :Priority r<CR>
map <buffer> <leader>x :Priority x<CR>
map <buffer> <leader>l :Priority l<CR>


