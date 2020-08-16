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
	if getline(v:foldstart) =~ "^z$"
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

fu FoldAll() " {{{
	:call Fold2("^# +[a-z0-9]*_[a-z0-9]*", "^# +")
	:call Fold2("^# +[a-z0-9]*$", "^# +[a-z0-9]*$")
endfu

" }}}

fu! Sort(search) " {{{
	let search = a:search
	let g:foldtext = a:search
	:call SearchFoldRestore()
	:sort
	:sort /^[^a-zA-Z*-]/r
	:sort /^\$/r
	:sort /^[xlno] /r
	:sort /^(/r
	if search(search,'nw')
		execute "normal!
			\:sort /".search."/r\<CR>
			\:sort /^# vim/r\<CR>
			\/".search."\\|^\\(\\(.*[@+z].*\\)\\@!.\\)*$\<CR>"
		:call SearchFold()
		execute "normal /".search."\<CR>ggn0"
	else
		execute "normal!
					\/^\\(\\(.*[@+].*\\)\\@!.\\)*$\<CR>"
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

fu! Tag(line1, line2, tag) " {{{
	:normal! mm
	execute "normal!:".a:line1.",".a:line2."s/@".a:tag."/%/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/@\\S*/@".a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\(^.*[@%].*\\)\\@<!\\s*$/ @".a:tag."/e\<CR>"
	execute "normal!:".a:line1.",".a:line2."s/\\s*%//e\<CR>"
	:normal! `mj
endfu 
" }}}

fu! Update() " {{{
	:%s/^[lk] //g
	:%s/^x \(([HR])\)\@=//g
	:%s/\(^x .*\)\@<= @\S*//g
endfu 
" }}}

command! -nargs=1 Sort :call Sort(<f-args>)
command! -nargs=1 Fold :call Fold(<f-args>)
command! -nargs=1 Fold2 :call Fold2(<f-args>)
command! -nargs=1 -range NewLine :call NewLine(<line1>, <f-args>)
command! -nargs=1 -range Priority :call Priority(<line1>, <line2>, <f-args>) 
command! -nargs=1 -range Done :call Done(<line1>,<line2>,<f-args>)
command! -nargs=1 -range Tag :call Tag(<line1>, <line2>, <f-args>) 
command! Update :call Update() 

map <buffer> <leader>a :Priority A<CR>
map <buffer> <leader>b :Priority B<CR>
map <buffer> <leader>c :Priority C<CR>
map <buffer> <leader>s :Priority S<CR>
map <buffer> <leader>w :Priority W<CR>
map <buffer> <leader>m :Priority M<CR>
map <buffer> <leader>r :Priority R<CR>
map <buffer> <leader>u :Priority U<CR>

map <buffer> <leader>x :Done x<CR>
map <buffer> <leader>l :Done l<CR>

map <buffer> <leader>n :Tag n<CR>
map <buffer> <leader>h :Tag h<CR>

map <buffer> <leader>0 :Tag 0day<CR>
map <buffer> <leader>1 :Tag 1morn<CR>
map <buffer> <leader>2 :Tag 2work<CR>
map <buffer> <leader>3 :Tag 3eve<CR>
map <buffer> <leader>4 :Tag 4paint<CR>
map <buffer> <leader>5 :Tag 5bed<CR>
map <buffer> <leader>6 :Tag 6tomorrow<CR>

nmap <buffer> sl :Sort +\S*<CR>:call FoldAll()<CR>
nmap <buffer> sp slvGzo
" nmap <buffer> s1 sl:/+1<CR>zO<Esc>
" nmap <buffer> s2 sl:/+2<CR>zO<Esc>
" nmap <buffer> s3 sl:/+3<CR>zO<Esc>
" nmap <buffer> s4 sl:/+4<CR>zO<Esc>
" nmap <buffer> s5 sl:/+5<CR>zO<Esc>
" nmap <buffer> s6 sl:/+6<CR>zO<Esc>
" nmap <buffer> s7 sl:/+7<CR>zO<Esc>
" nmap <buffer> s8 sl:/+8<CR>zO<Esc>
" nmap <buffer> sd s1
" nmap <buffer> sw s2
" nmap <buffer> sa s3
" nmap <buffer> se s4
" nmap <buffer> sq s5
" nmap <buffer> ss s6
" nmap <buffer> sc s7
" nmap <buffer> sf s8

nmap <buffer> s1 :Sort +1\S*<CR>
nmap <buffer> sd s1
nmap <buffer> s! :Sort ([A-Z])\(.*+1\S*\)\@=<CR>
nmap <buffer> sD s!

nmap <buffer> s2 :Sort +2\S*<CR>zO<Esc>
nmap <buffer> sw s2
nmap <buffer> s@ :Sort ([A-Z])\(.*+2\S*\)\@=<CR>zO<Esc>
nmap <buffer> sW s@

nmap <buffer> s3 :Sort +3\S*<CR>zO<Esc>
nmap <buffer> sa s3
nmap <buffer> s£ :Sort ([A-Z])\(.*+3\S*\)\@=<CR>zO<Esc>
nmap <buffer> sA s£

nmap <buffer> s4 :Sort +4\S*<CR>zO<Esc>
nmap <buffer> se s4
nmap <buffer> s$ :Sort ([A-Z])\(.*+4\S*\)\@=<CR>zO<Esc>
nmap <buffer> sE s$

nmap <buffer> s5 :Sort +5\S*<CR>zO<Esc>
nmap <buffer> sq s5
nmap <buffer> s% :Sort ([A-Z])\(.*+5\S*\)\@=<CR>zO<Esc>
nmap <buffer> sQ s%

nmap <buffer> s6 :Sort +6\S*<CR>zO<Esc>
nmap <buffer> ss s6
nmap <buffer> s^ :Sort ([A-Z])\(.*+6\S*\)\@=<CR>zO<Esc>
nmap <buffer> sS s^

nmap <buffer> s7 :Sort +7\S*<CR>zO<Esc>
nmap <buffer> sc s7
nmap <buffer> s& :Sort ([A-Z])\(.*+7\S*\)\@=<CR>zO<Esc>
nmap <buffer> sC s&

nmap <buffer> s8 :Sort +8\S*<CR>zO<Esc>
nmap <buffer> sf s8
nmap <buffer> s* :Sort ([A-Z])\(.*+8\S*\)\@=<CR>zO<Esc>
nmap <buffer> sF s*


nmap <buffer> sh :Sort \((H).*\\|^# \)\@<=@\S*<CR>
nmap <buffer> sn :Sort \(([^H]).*\\|^# \)\@<=@\S*<CR>
nmap <buffer> sm :Sort @\S*<CR>

nmap <buffer> si :Sort ^.*(\S)<CR>

nmap <buffer> s? :Sort ^.*(\S)[^@]*$<CR>

nmap <buffer> o :NewLine o<CR>
nmap <buffer> O :NewLine O<CR>

:normal sp
