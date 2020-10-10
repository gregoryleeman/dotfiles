let b:current_syntax = "todo"

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"

syn match Tcomment /^\$ .*/
syn match Tcomment /^\> .*/
hi def link Tcomment blue

syn match Ta /(A)/ containedin=ALLBUT,tx,tl
hi def link Ta red
syn match Tb /(B)/ containedin=ALLBUT,tx,tl
hi def link Tb blue
syn match Tc /(C)/ containedin=ALLBUT,tx,tl
hi def link Tc green
syn match Te /(E)/ containedin=ALLBUT,tx,tl
hi def link Te yellow
syn match Tw /(W)/ containedin=ALLBUT,tx,tl
hi def link Tw magenta
syn match Tm /(M)/ containedin=ALLBUT,tx,tl
hi def link Tm violet
syn match Th /(H)/ containedin=ALLBUT,tx,tl
hi def link Th yellow
syn match Td /(D)/ containedin=ALLBUT,tx,tl
hi def link Td cyan

syn match Tx /^x .*/ containedin=ALL
hi def link Tx green
syn match Tl /^l .*/ containedin=ALL
hi def link Tl red

syn match Tr /@r/ containedin=ALL
hi def link Tr yellowu
syn match Trepeat /.*\(@r\)\@=.*/
hi def link Trepeat yellow
syn match Tn /@n/ containedin=ALL
hi def link Tn blueu
syn match Ttoday /.*\(@n\)\@=.*/
hi def link Ttoday blue
syn match Tt /@t/ containedin=ALL
hi def link Tt cyanu
syn match Ttomorrow /.*\(@t\)\@=.*/
hi def link Ttomorrow cyan

syn match Ttoday /.*\(@n\)\@=/
hi def link Ttoday base2
syn match Ttomorrow /.*\(@t\)\@=/
hi def link Ttomorrow cyan

syn match Ttag /\<[+@#]\S\+\>/ containedin=ALLBUT,Ttitle,Thidden
hi def link Ttag base01u

syn match Ttitle /^#.*/
hi def link Ttitle base2u
syn match Thidden /^# vim/
hi def link Thidden base01

