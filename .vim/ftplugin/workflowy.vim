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

" fu! Search(search) " {{{
" 	execute "normal! /".a:search."\<CR>"
" 	:call searchfold#searchfold#()
" endfu " }}}
" command! -nargs=1 Search :call Search(<f-args>) 

" fu! Tag(line1, line2, tag) " {{{
" 	:normal! mm
" 	execute "normal!:".a:line1.",".a:line2."s/@".a:tag."\\s*/%/e\<CR>"
" 	execute "normal!:".a:line1.",".a:line2."s/\\(%.*\\)\\@<!\\s*$/ @".a:tag."/e\<CR>"
" 	execute "normal!:".a:line1.",".a:line2."s/%//e\<CR>"
" 	:normal! `mj
" endfu 
" " }}}
" command! -range -nargs=1 Tag :call Tag(<line1>,<line2>,<f-args>)
" map <buffer> <leader>n :Tag today<CR>
" map <buffer> <leader>w :Tag waiting<CR>
" map <buffer> <leader>m :Tag maybe<CR>
" map <buffer> <leader>t :Tag tomorrow<CR>
" map <buffer> <leader>a :Tag a<CR>
" map <buffer> <leader>b :Tag b<CR>
" map <buffer> <leader>c :Tag c<CR>

fu! Done(line1, line2, n) " {{{
	:normal! mm
	execute "normal!
		\:".a:line1.",".a:line2."s/\\(\\S\\)\\@=/%/e\<CR>
		\:".a:line1.",".a:line2."s/%".a:n." //e\<CR>
		\:".a:line1.",".a:line2."s/%\\S /".a:n." /e\<CR>
		\:".a:line1.",".a:line2."s/%/".a:n." /e\<CR>"
	:normal! `mj
endfu " }}}
command! -range -nargs=1 Done :call Done(<line1>,<line2>,<f-args>)
map <buffer> <leader>x :Done x<CR>
map <buffer> <leader>n :Done n<CR>
map <buffer> <leader>l :Done l<CR>
