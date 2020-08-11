function! SortByColumn(column, ...) 
	" let column= get(a:, 1, 1)
	let column= a:column - 1
	let reverse= get(a:, 1, 0)
	" echo "column:".column." reverse:". reverse
	if reverse == "!"
		execute '2,$sort! /\([^'.b:div.']*'.b:div.'\)\{'.column.'}/'
	else
		execute '2,$sort /\([^'.b:div.']*'.b:div.'\)\{'.column.'}/'
	endif
endfunction

function! Align()
	:Tab /\t/l0
	" execute "normal!
	" 			\mw
	" 			\ggvG$
	" 			\:Tab /".b:div."/\<CR>
	" 			\:%s/".b:div."\\zs \\ze//g\<CR>
	" 			\:noh\<CR>
	" 			\'w"
endfunction

function! UnAlign()
	execute "normal!
				\:%s/ \\zs \\+\\ze//g\<CR>
				\:%s/\\zs \\ze".b:div."//g\<CR>
				\:noh\<CR>"
endfunction

imap <buffer> <Esc> <Esc>mm:Align<CR>`m

command! -nargs=1 -bang SortByColumn :call SortByColumn(<args>, "<bang>")
nnoremap <buffer> s1 :SortByColumn 1<CR>
nnoremap <buffer> s2 :SortByColumn 2<CR>
nnoremap <buffer> s3 :SortByColumn 3<CR>
nnoremap <buffer> s4 :SortByColumn 4<CR>
nnoremap <buffer> s5 :SortByColumn 5<CR>
nnoremap <buffer> s6 :SortByColumn 6<CR>
nnoremap <buffer> s7 :SortByColumn 7<CR>
nnoremap <buffer> s8 :SortByColumn 8<CR>
nnoremap <buffer> s9 :SortByColumn 9<CR>

command! Align :call Align()
command! UnAlign :call UnAlign()
