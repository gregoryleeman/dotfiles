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
	if getline(v:foldstart) =~ "^§.*$"
		return repeat("-", 79) . repeat(" ", winwidth(0))
	else
		" if getline(v:foldstart) =~ ".*+\S*.*"
		" 	let linematch = matchstr(getline(v:foldstart), "+\\S*\\>")
		" 	return "# " . linematch . " +" . repeat(" ", winwidth(0))
		" endif 
		return trim(getline(v:foldstart))[0:-1] . " +" . repeat(" ", winwidth(0))
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

		if foldstart != 0
			if line !~ a:search || line =~ a:search && linematch != foldmatch 
				let foldend = i - 1 
				execute foldstart.",".foldend."fold"
				let foldstart = 0
				let foldmatch = ""
			endif
		endif

		if foldstart == 0
			if line =~ a:search
				let foldstart = i
				let foldmatch = linematch
			endif
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
			\:sort /^#.* vim/r\<CR>
			\/".search."\\|^\\(\\(.*[@+§].*\\|.*([A-Z])\\)\\@!.\\)*$\<CR>"
		:call SearchFold()
		execute "normal /".search."\<CR>ggn0"
	else
		execute "normal!
			\:sort /^#.* vim/r\<CR>
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
	" let context = matchstr(line, "@\\S\\+")
	" execute "normal! i " . project . " " . context . "\<Esc>:s/  / /e\<CR>:s/ $//e\<CR>0"
	execute "normal! i " . project . "\<Esc>:s/  / /e\<CR>:s/ $//e\<CR>0"
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
	if a:tag =~ "[0-9]"
		execute "normal!:".a:line1.",".a:line2."s/\\(@[a-z]\\)\\@<=[0-9]*\\(%\\)\\@!/".a:tag."%/e\<CR>"
		execute "normal!:".a:line1.",".a:line2."s/\\(^.*[@%].*\\)\\@<!\\s*$/ @n".a:tag."/e\<CR>"
		execute "normal!:".a:line1.",".a:line2."s/\\s*%//e\<CR>"
	elseif a:tag =~ "[a-z]"
		execute "normal!:".a:line1.",".a:line2."s/@".a:tag."\\S*/%/e\<CR>"
		execute "normal!:".a:line1.",".a:line2."s/\\(@\\)\\@<=[a-z]/".a:tag."/e\<CR>"
		execute "normal!:".a:line1.",".a:line2."s/\\(^.*[@%].*\\)\\@<!\\s*$/ @".a:tag."0/e\<CR>"
		execute "normal!:".a:line1.",".a:line2."s/\\s*%//e\<CR>"
	endif
	:normal! `mj
endfu 

" }}}

fu! Update() " {{{
	:%s/^[xl] \(.*@[hr]\)\@=//ge
	:%s/\(^[xl] .*\)\@<=\s*@n\S*//ge
	:%s/\(([A-Z]).*\)\@<=@t/@n/ge
endfu 

" }}}
fu! Clear() " {{{
	:%s/\(([A-Z]).*\)\@<=\s*@[^ h]\S*//g
endfu 

" }}}

" commands {{{
command! -nargs=1 Sort :call Sort(<f-args>)
command! -nargs=1 Fold :call Fold(<f-args>)
command! -nargs=1 Fold2 :call Fold2(<f-args>)
command! -nargs=1 -range NewLine :call NewLine(<line1>, <f-args>)
command! -nargs=1 -range Priority :call Priority(<line1>, <line2>, <f-args>) 
command! -nargs=1 -range Done :call Done(<line1>,<line2>,<f-args>)
command! -nargs=* -range Tag :call Tag(<line1>, <line2>, <f-args>) 
command! Update :call Update() 
command! Clear :call Clear() 

" }}}
" mappings {{{

map <buffer> <leader>a :Priority A<CR>
map <buffer> <leader>b :Priority B<CR>
map <buffer> <leader>c :Priority C<CR>
map <buffer> <leader>d :Priority D<CR>
map <buffer> <leader>e :Priority E<CR>
map <buffer> <leader>m :Priority M<CR>
map <buffer> <leader>w :Priority W<CR>
map <buffer> <leader>s :Priority S<CR>

map <buffer> <leader>n :Tag n<CR>
map <buffer> <leader>h :Tag h<CR>
map <buffer> <leader>t :Tag t<CR>
map <buffer> <leader>0 :Tag 0<CR>
map <buffer> <leader>1 :Tag 1<CR>
map <buffer> <leader>2 :Tag 2<CR>
map <buffer> <leader>3 :Tag 3<CR>
map <buffer> <leader>4 :Tag 4<CR>
map <buffer> <leader>5 :Tag 5<CR>

map <buffer> <leader>x :Done x<CR>
map <buffer> <leader>l :Done l<CR>

nmap <buffer> sa :Sort (A)<CR>
nmap <buffer> sb :Sort (B)<CR>
nmap <buffer> sc :Sort (C)<CR>
nmap <buffer> se :Sort (E)<CR>
nmap <buffer> sm :Sort (M)<CR>
nmap <buffer> ss :Sort ([SW])<CR>
nmap <buffer> sw :Sort ([SW])<CR>

map <buffer> sj :Sort +[0-9].*<CR>:Fold +[0-9]_\S\+<CR>:Fold +[0-9]<CR>
map <buffer> so :Sort +[0-9]<CR>:Fold +[0-9]<CR>
map <buffer> sp sjvGzo
map <buffer> s1 sj/+1<CR>zO<Esc>
map <buffer> s2 sj/+2<CR>zO<Esc>
map <buffer> s3 sj/+3<CR>zO<Esc>
map <buffer> s4 sj/+4<CR>zO<Esc>
map <buffer> s5 sj/+5<CR>zO<Esc>
map <buffer> s6 sj/+6<CR>zO<Esc>
map <buffer> s7 sj/+7<CR>zO<Esc>
map <buffer> s8 sj/+8<CR>zO<Esc>
map <buffer> s! so/+1<CR>zo<Esc>
map <buffer> s@ so/+2<CR>zo<Esc>
map <buffer> s£ so/+3<CR>zo<Esc>
map <buffer> s$ so/+4<CR>zo<Esc>
map <buffer> s% so/+5<CR>zo<Esc>
map <buffer> s^ so/+6<CR>zo<Esc>
map <buffer> s& so/+7<CR>zo<Esc>
map <buffer> s* so/+8<CR>zo<Esc>

map <buffer> sz :Sort .*+[1345678]<CR>

nmap <buffer> s? :Sort ^.*(\S)[^@]*$<CR>

nmap <buffer> si :Sort (\S)<CR>

nmap <buffer> sn :Sort \(@[nh]*\)\@<=[0-9]*\><CR>
nmap <buffer> sN :Sort \(+[0-9]\(.*@[nh]\)\@=\\|\(^# \)\@<=+[0-9]\( \)\@=\)<CR>
nmap <buffer> st :Sort \(@[th]*\)\@<=[0-9]*\><CR>
nmap <buffer> sT :Sort \(+[0-9]\(.*@[th]\)\@=\\|\(^# \)\@<=+[0-9]\( \)\@=\)<CR>
nmap <buffer> sh :Sort \(@[hr]*\)\@<=[0-9]*\><CR>
nmap <buffer> sH :Sort \(+[0-9]\(.*@[hr]\)\@=\\|\(^# \)\@<=+[0-9]\( \)\@=\)<CR>

nmap <buffer> sx :Sort ^[xl]<CR>
nmap <buffer> sl :Sort ^[xl]<CR>

nmap <buffer> o :NewLine o<CR>
nmap <buffer> O :NewLine O<CR>

map <buffer> <leader>u :Update<CR>

" }}}

:normal sN
