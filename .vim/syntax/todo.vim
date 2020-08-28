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

" syn match T0 /[@+]0\S*\>/ containedin=ALL
" hi def link T0 cyanu
" syn match T1 /[@+]1\S*\>/ containedin=ALL
" hi def link T1 orangeu
" syn match T2 /[@+]2\S*\>/ containedin=ALL
" hi def link T2 blueu
" syn match T3 /[@+]3\S*\>/ containedin=ALL
" hi def link T3 yellowu
" syn match T4 /[@+]4\S*\>/ containedin=ALL
" hi def link T4 violetu
" syn match T5 /[@+]5\S*\>/ containedin=ALL
" hi def link T5 magentau
" syn match T6 /[@+]6\S*\>/ containedin=ALL
" hi def link T6 greenu
" syn match T7 /[@+]7\S*\>/ containedin=ALL
" hi def link T7 redu
" syn match T8 /[@+]8\S*\>/ containedin=ALL
" hi def link T8 cyanu
" syn match T9 /[@+]9\S*\>/ containedin=ALL
" hi def link T9 violetu
" syn match Tt /@t\S*\>/ containedin=ALL
" hi def link Tt blueu

syn match Tx /^x .*/ containedin=ALL
hi def link Tx green
syn match Tl /^l .*/ containedin=ALL
hi def link Tl red

syn match Tr /#r\S*\>/ containedin=ALL
hi def link Tr cyanu

syn match Ttoday /.*\(@[0-9]\)\@=/
hi def link Ttoday base2

syn match Thidden /^#.*/
hi def link Thidden base01

syn match Ttag /\<[+@#]\S\+\>/ containedin=ALL
hi def link Ttag base01u

syn match Tcomment /^\$/
hi def link Tcomment blue
