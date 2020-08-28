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
	if getline(v:foldstart) =~ "^§$"
		return repeat("-", 79) . repeat(" ", winwidth(0))
	else
		return repeat(" ", indent(v:foldstart)) . trim(getline(v:foldstart))[0:-1] . " +" . repeat(" ", winwidth(0))
	endif
endfu

" }}}
fu! Fold(search) " {{{
	let foldstart = 0
	let foldend = 0
	let foldmatch = ""
	for i in range(1, line('$'))
		let line = getline(i)
		let linematch = matchstr(line, a:search)
		if line =~ a:search && linematch != foldmatch || line =~ "^# vim.*"
			let foldend = i - 1 
			if foldstart != 0 
				execute foldstart.",".foldend."fold"
			endif
			let foldstart = i
			let foldmatch = linematch
		endif
	endfor
endfu

" }}}
fu! Fold2(start,end) " {{{
	let foldinit = 0
	let foldstart = 0
	let foldend = 0
	let foldmatch = ""
	for i in range(1, line('$'))
		let line = getline(i)
		if foldinit == 1 && line =~ a:end || line =~ "^# vim.*"
			let foldend = i - 1 
			execute foldstart.",".foldend."fold"
			let foldinit = 0
		endif
		if foldinit == 0 && line =~ a:start
			let foldstart = i
			let foldinit = 1
		endif
	endfor
endfu

" }}}
fu! Sort(search) " {{{
	let search = a:search
	:call SearchFoldRestore()
	:sort
	:sort /^[(#$]/r
	:sort /^[xl] /r
	if search(search,'nw')
		execute "normal!
			\:sort /".search."/r\<CR>
			\:sort /^# vim/r\<CR>
			\/".search."\\|^\\(\\(.*[@+§].*\\|.*([A-Z])\\)\\@!.\\)*$\<CR>"
		:call SearchFold()
		execute "normal /".search."\<CR>ggn0"
	else
		execute "normal!
					\/^\\(\\(.*[@+§].*\\|.*([A-Z])\\)\\@!.\\)*$\<CR>"
		:call SearchFold()
	endif
endfu

" }}}
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
	execute "normal! i " . project . " " . context . "\<Esc>:s/  / /e\<CR>:s/ $//e\<CR>0"
	startinsert
endfu 

" }}}
fu! Priority(line1, line2, prio) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/(.)/(".a:prio.")/ge\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/^\\(.*(\\S)\\)\\@!/(".a:prio.") /ge\<CR>"
	:normal! `mj
endfu 

" }}}
fu! Done(line1, line2, n) " {{{
	:normal! mm
	execute "normal!
		\:".a:line1.",".a:line2."s/^/%/e\<CR>
		\:".a:line1.",".a:line2."s/^%".a:n." //e\<CR>
		\:".a:line1.",".a:line2."s/^%\\S /".a:n." /e\<CR>
		\:".a:line1.",".a:line2."s/^%/".a:n." /e\<CR>"
	:normal! `mj
endfu 

" }}}
fu! Tag(line1, line2, mod, tag) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/".a:mod.a:tag."/%/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/".a:mod."\\S*/".a:mod.a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\(^.*[".a:mod."%].*\\)\\@<!\\s*$/ ".a:mod.a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\s*%//e\<CR>"
	:normal! `mj
endfu 

" }}}
fu! Update() " {{{
	:%s/^[nxl] \(.*#r\)\@=//g
	:%s/\(^[nxl] .*\)\@<= @\S*//g
endfu 

" }}}

command! -nargs=1 Sort :call Sort(<f-args>)
command! -nargs=1 Fold :call Fold(<f-args>)
command! -nargs=1 Fold2 :call Fold2(<f-args>)
command! -nargs=1 -range NewLine :call NewLine(<line1>, <f-args>)
command! -nargs=1 -range Priority :call Priority(<line1>, <line2>, <f-args>) 
command! -nargs=1 -range Done :call Done(<line1>,<line2>,<f-args>)
command! -nargs=* -range Tag :call Tag(<line1>, <line2>, <f-args>) 
command! Update :call Update() 

" mappings {{{ 
map <buffer> <leader>a :Priority A<CR>
map <buffer> <leader>b :Priority B<CR>
map <buffer> <leader>c :Priority C<CR>
map <buffer> <leader>h :Priority H<CR>
map <buffer> <leader>m :Priority M<CR>
map <buffer> <leader>s :Priority S<CR>
map <buffer> <leader>w :Priority W<CR>

map <buffer> <leader>0 :Tag @ 0<CR>
map <buffer> <leader>1 :Tag @ 1<CR>
map <buffer> <leader>2 :Tag @ 2<CR>
map <buffer> <leader>3 :Tag @ 3<CR>
map <buffer> <leader>4 :Tag @ 4<CR>
map <buffer> <leader>5 :Tag @ 5<CR>
map <buffer> <leader>6 :Tag @ 6<CR>
map <buffer> <leader>7 :Tag @ 7<CR>
map <buffer> <leader>8 :Tag @ 8<CR>
map <buffer> <leader>9 :Tag @ 9<CR>

map <buffer> <leader>t :Tag @ t<CR>
map <buffer> <leader>n :Tag @ n<CR>

map <buffer> <leader>r :Tag # r<CR>

map <buffer> <leader>x :Done x<CR>
map <buffer> <leader>l :Done l<CR>

nmap <buffer> sp :Sort +\S*<CR>:Fold +\S*<CR>
nmap <buffer> sn :Sort @\S*<CR>
nmap <buffer> si :Sort (\S)<CR>

nmap <buffer> sa :Sort (A)<CR>
nmap <buffer> sb :Sort (B)<CR>
nmap <buffer> sc :Sort (C)<CR>
nmap <buffer> sm :Sort (M)<CR>
nmap <buffer> sw :Sort (W)<CR>
nmap <buffer> sh :Sort (H)<CR>
nmap <buffer> sd :Sort (D)<CR>

nmap <buffer> sr :Sort #r<CR>

map <buffer> s0 :Sort +0<CR>
map <buffer> s1 :Sort +1<CR>
map <buffer> s2 :Sort +2<CR>
map <buffer> s3 :Sort +3<CR>
map <buffer> s4 :Sort +4<CR>
map <buffer> s5 :Sort +5<CR>
map <buffer> s6 :Sort +6<CR>
map <buffer> s7 :Sort +7<CR>
map <buffer> s8 :Sort +8<CR>

nmap <buffer> s? :Sort ^.*(\S)[^@]*$<CR>

nmap <buffer> o :NewLine o<CR>
nmap <buffer> O :NewLine O<CR>

map <buffer> <leader>u :Update<CR>

" }}}

:normal sp
