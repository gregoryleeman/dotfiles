let b:current_syntax = "todo"

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"

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

syn match Tr /#r\S*\>/ containedin=ALL
hi def link Tr cyanu

syn match Ttoday /.*\(@n\)\@=/
hi def link Ttoday base2
syn match Ttomorrow /.*\(@t\)\@=/
hi def link Ttomorrow base1
syn match Tholiday /.*\(@s\)\@=/
hi def link Tholiday yellow


syn match Thidden /^#.*/
hi def link Thidden base01

syn match Ttag /\<[+@#]\S\+\>/ containedin=ALL
hi def link Ttag base01u

syn match Tcomment /^\$/
hi def link Tcomment blue
