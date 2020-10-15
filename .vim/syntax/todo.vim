let b:current_syntax = "todo"
" exe "hi! Folded cterm=NONE ctermfg=".g:base1." ctermbg=NONE"

syn match Tcomment /^\$ .*/
syn match Tcomment /^\> .*/
hi def link Tcomment blue

syn match Ta /(A)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Ta red
syn match Tb /(B)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Tb blue
syn match Tc /(C)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Tc green
syn match Te /(E)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Te yellow
syn match Tw /(W)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Tw magenta
syn match Ts /(S)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Ts magenta
syn match Tm /(M)/ containedin=ALLBUT,Tx,Tl,Thidden
hi def link Tm violet

syn match Tx /^x .*/ containedin=ALL
hi def link Tx green
syn match Tl /^l .*/ containedin=ALL
hi def link Tl red

syn match Tr /@r\S*/ containedin=Ttag
hi def link Tr cyanu 
syn match Tremember /.*\(@r\)\@=.*/
hi def link Tremember cyan
syn match Th /@h\S*/ containedin=Ttag
hi def link Th yellowu
syn match Thabit /.*\(@h\)\@=.*/
hi def link Thabit yellow
syn match Tn /@n\S*/ containedin=Ttag
hi def link Tn base2u
syn match Ttoday /.*\(@n\)\@=.*/
hi def link Ttoday base2
syn match Tt /@t\S*/ containedin=Ttag
hi def link Tt violetu
syn match Ttomorrow /.*\(@t\)\@=.*/
hi def link Ttomorrow violet

syn match Ttag /\<[+@#]\S\+\>/ containedin=ALLBUT,Ttitle,Thidden,Ttitlebold
hi def link Ttag base01u

syn match Tlink /^\(http\|www\)\S\+/
hi def link Tlink blueu
syn match Ttitle /^#.*/
hi def link Ttitle base1u
syn match Ttitlebold /^# +[0-9] .*/ containedin=Ttitle
hi def link Ttitlebold base3u
syn match Thidden /^#.*vim.*/
syn match Thidden /.*#maybe.*/
hi def link Thidden base01
