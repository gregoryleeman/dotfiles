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

fu! Tag(line1, line2, tag) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/".a:tag."\\S*\\s*/%/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\(%.*\\)\\@<!\\s*$/ ".a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/%//e\<CR>"
	:normal! `m
endfu 
" }}}
command! -range -nargs=1 Tag :call Tag(<line1>,<line2>,<f-args>)
map <buffer> <leader>a :Tag !important<CR>
map <buffer> <leader>b :Tag @blocked<CR>
map <buffer> <leader>e :Tag @event<CR>
map <buffer> <leader>n :Tag day:today<CR>
map <buffer> <leader>t :Tag day:tomorrow<CR>
map <buffer> <leader>s :Tag @scheduled<CR>
map <buffer> <leader>r :Tag @repeat<CR>
map <buffer> <leader>m :Tag @maybe<CR>
map <buffer> <leader>w :Tag @waiting<CR>

" fu! Day(line1, line2, daynum) " {{{
" 	let daynum = a:daynum
" 	if daynum =~# '^\d\+$'
" 		let days = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
" 		let day = days[daynum]
" 	else
" 		let day = "daily"
" 	endif
" 	" execute "normal!:".a:line1.",".a:line2." Tag day:"day"\<CR>"
" 	" call Tag(a:line1, a:line2, "day:".day)

" 	:normal! mm
" 	execute "normal!:".a:line1.",".a:line2."s/day:".day."\\s*/%/e\<CR>"
" 	execute "normal!:".a:line1.",".a:line2."s/day:\\S*/%day:".day."/e\<CR>"
" 	execute "normal!:".a:line1.",".a:line2."s/\\(%.*\\)\\@<!\\s*$/ day:".day."/e\<CR>"
" 	execute "normal!:".a:line1.",".a:line2."s/%//e\<CR>"
" 	:normal! `m

" endfu " }}}
" command! -range -nargs=1 Day :call Day(<line1>,<line2>,<f-args>)
" map <buffer> <leader>d :Day daily<CR>

" fu! Today(line1, line2, change) " {{{
" 	let todaynum = strftime("%w")
" 	let daynum = todaynum + a:change
" 	if daynum > 6
" 		let daynum = daynum - 7
" 	endif
" 	execute "normal!:".a:line1.",".a:line2." Day ".daynum."\<CR>"
" endfu " }}}
" command! -range -nargs=1 Today :call Today(<line1>,<line2>,<f-args>)
" map <buffer> <leader>n :Today 0<CR>
" map <buffer> <leader>t :Today 1<CR>

fu! SearchToday() " {{{
	execute "normal! /day:today\<CR>"
	:call SearchFold()
endfu " }}}
command! SearchToday :call SearchToday()
map <buffer> sn :SearchToday<CR>

fu! Start(line1, line2, n) " {{{
	:normal! mm
	execute "normal!
		\:".a:line1.",".a:line2."s/\\(\\S\\)\\@=/%/e\<CR>
		\:".a:line1.",".a:line2."s/%".a:n."\\s*//e\<CR>
		\:".a:line1.",".a:line2."s/%/".a:n." /e\<CR>"
	:normal! `m
endfu " }}}
command! -range -nargs=1 Start :call Start(<line1>,<line2>,<f-args>)
map <buffer> <leader>x :Start x<CR>
map <buffer> <leader>* :Start \*<CR>
map <buffer> <leader>- :Start -<CR>
map <buffer> <leader>~ :Start \~<CR>
map <buffer> <leader>1 :Start 1\.<CR>
map <buffer> <leader>2 :Start 2\.<CR>
map <buffer> <leader>3 :Start 3\.<CR>
map <buffer> <leader>4 :Start 4\.<CR>
map <buffer> <leader>5 :Start 5\.<CR>
map <buffer> <leader>6 :Start 6\.<CR>
map <buffer> <leader>7 :Start 7\.<CR>
map <buffer> <leader>8 :Start 8\.<CR>
map <buffer> <leader>8 :Start 8\.<CR>
map <buffer> <leader>9 :Start 9\.<CR>
map <buffer> <leader>0 :Start 0\.<CR>
