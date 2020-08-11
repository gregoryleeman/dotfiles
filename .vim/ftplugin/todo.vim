setl iskeyword+=#
setl iskeyword+=+
setl iskeyword+=@-@
setl iskeyword+=-
setl iskeyword+=(
setl iskeyword+=)
setl nonumber
setl nowrap
setl fo-=o

fu! SearchFoldText() " {{{
	let start = v:foldstart
	let end = v:foldend
	return g:foldtext . " " . repeat("-", 79 - len(g:foldtext) - 1) . repeat(" ", winwidth(0))
	return getline(start) . " +" . repeat(" ", winwidth(0))
endfu

" }}}

fu! Sort(search) " {{{
	let search = a:search
	let g:foldtext = a:search
	:call SearchFoldRestore()
	:sort
	:sort /^[^a-zA-Z]/r
	:sort /#[0-9]\+/r
	:sort /^\$/r
	:sort /^[xlno] /r
	:sort /^(/r
	if search(search,'nw')
		execute "normal!
			\:sort /".search."/r\<CR>
			\:sort /^# vim/r\<CR>
			\/".search."\\|^\\(\\(.*[@+].*\\)\\@!.\\)*$\<CR>"
		:call SearchFold()
		execute "normal /".search."\<CR>ggn0"
	else
		execute "normal!
					\/^\\(\\(.*[@+].*\\)\\@!.\\)*$\<CR>"
		:call SearchFold()
	endif
endfu

" }}}
command! -nargs=1 Sort :call Sort(<f-args>)
nmap <buffer> si :Sort ^.*(\S)<CR>
nmap <buffer> sp :Sort +\S*<CR>
nmap <buffer> sc :Sort @\S*<CR>

nmap <buffer> sd :Sort +admin\S*<CR>
nmap <buffer> sw :Sort +work\S*<CR>
nmap <buffer> sW :Sort \(+work\S*.*\)\@<=@<CR>
nmap <buffer> sa :Sort +art\S*<CR>
nmap <buffer> sA :Sort \(+art\S*.*\)\@<=@<CR>
nmap <buffer> se :Sort +health\S*<CR>
nmap <buffer> sE :Sort \(+health\S*.*\)\@<=@<CR>
nmap <buffer> sq :Sort +mind\S*<CR>
nmap <buffer> sQ :Sort \(+mind\S*.*\)\@<=@<CR>
nmap <buffer> sc :Sort +social\S*<CR>
nmap <buffer> sC :Sort \(+social\S*.*\)\@<=@<CR>
nmap <buffer> sf :Sort +family\S*<CR>
nmap <buffer> sF :Sort \(+family\S*.*\)\@<=@<CR>
nmap <buffer> sz :Sort +soul\S*<CR>
nmap <buffer> sZ :Sort \(+soul\S*.*\)\@<=@<CR>

nmap <buffer> sr :Sort ([HR])<CR>
nmap <buffer> sn :Sort @[24]\S*<CR>
nmap <buffer> sh :Sort @[0135]\S*<CR>
nmap <buffer> sx :Sort ^[xl] <CR>
nmap <buffer> sl :Sort ^[xl] <CR>
nmap <buffer> ss yiw:Sort <C-r>" <CR>

fu! NewLine(line1, ex) " {{{
	if a:ex ==# "o"
		normal! o
		let line1 = a:line1
	elseif a:ex ==# "O"
		normal! O
		let line1 = a:line1 + 1
	endif
	let line = getline(line1)
	let project = matchstr(line, "+\\S\\+")
	let context = matchstr(line, "@\\S\\+")
	execute "normal! i " . project . " " . context . "\<Esc>:s/  / /e\<CR>0"
	startinsert
endfu 

" }}}
command! -nargs=1 -range NewLine :call NewLine(<line1>, <f-args>)
nmap <buffer> o :NewLine o<CR>
nmap <buffer> O :NewLine O<CR>

fu! Priority(line1, line2, prio) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/(.)/(".a:prio.")/ge\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/^\\(.*(\\S)\\)\\@!/(".a:prio.") /ge\<CR>"
	:normal! `mj
endfu 

" }}}
command! -nargs=1 -range Priority :call Priority(<line1>, <line2>, <f-args>) 
map <buffer> <leader>a :Priority A<CR>
map <buffer> <leader>b :Priority B<CR>
map <buffer> <leader>c :Priority C<CR>
map <buffer> <leader>s :Priority S<CR>
map <buffer> <leader>w :Priority W<CR>
map <buffer> <leader>m :Priority M<CR>
map <buffer> <leader>r :Priority R<CR>
map <buffer> <leader>h :Priority H<CR>
map <buffer> <leader>u :Priority U<CR>

fu! Done(line1, line2, n) " {{{
	:normal! mm
	execute "normal!
		\:".a:line1.",".a:line2."s/^/%/e\<CR>
		\:".a:line1.",".a:line2."s/^%".a:n." //e\<CR>
		\:".a:line1.",".a:line2."s/^%\\S /".a:n." /e\<CR>
		\:".a:line1.",".a:line2."s/^%/".a:n." /e\<CR>"
	:normal! `mj
endfu " }}}
command! -range -nargs=1 Done :call Done(<line1>,<line2>,<f-args>)
map <buffer> <leader>x :Done x<CR>
map <buffer> <leader>l :Done l<CR>

fu! Tag(line1, line2, tag) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/@\\(".a:tag."\\)\\@=/%/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/@\\S*/@".a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\(^.*[%@].*\\)\\@<!\\s*$/ @".a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\s*%\\S*//e\<CR>"
	:normal! `mj
endfu " }}}
command! -nargs=1 -range Tag :call Tag(<line1>, <line2>, <f-args>) 
map <buffer> <leader>0 :Tag 0<CR>
map <buffer> <leader>1 :Tag 1<CR>
map <buffer> <leader>2 :Tag 2<CR>
map <buffer> <leader>3 :Tag 3<CR>
map <buffer> <leader>4 :Tag 4<CR>
map <buffer> <leader>5 :Tag 5<CR>
map <buffer> <leader>6 :Tag 6<CR>
map <buffer> <leader>7 :Tag 7<CR>
map <buffer> <leader>8 :Tag 8<CR>
map <buffer> <leader>9 :Tag 9<CR>

fu! Update() " {{{
	:%s/^l //g
	:%s/^x \(([HR])\)\@=//g
	:%s/\(^x .*\)\@<= @\S*//g
endfu " }}}
command! Update :call Update() 

:normal si
