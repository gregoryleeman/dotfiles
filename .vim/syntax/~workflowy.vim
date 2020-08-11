let b:current_syntax = "workflowy"

syn match Tx /^\s*x .*/ containedin=ALL
hi def link Tx green
syn match Tl /^\s*l .*/ containedin=ALL
hi def link Tl orange

syn match Tw /@w\>/ containedin=ALLBUT,Tx,Tl
hi def link Tw magentau
syn match Ttw /^.*@w\>.*/
hi def link Ttw magenta

syn match Ts /@s\>/ containedin=ALLBUT,Tx,Tl
hi def link Ts cyanu

syn match Tr /@r\>/ containedin=ALLBUT,Tx,Tl
hi def link Tr yellowu

syn match Tm /@m\>/ containedin=ALLBUT,Tx,Tl
hi def link Tm violetu
syn match Ttm /^.*@m\>.*/
hi def link Ttm violet

syn match Tt /@t\>/ containedin=ALLBUT,Tx,Tl
hi def link Tt cyanu
syn match Ttt /^.*@t\>.*/
hi def link Ttt cyan

syn match Te /@e\>/ containedin=ALLBUT,Tx,Tl
hi def link Te yellowu
syn match Tte /^.*@e\>.*/
hi def link Tte yellow

syn match Tn /@n\>/ containedin=ALLBUT,Tx,Tl
hi def link Tn blueu
syn match Ttn /^.*@n\>.*/
hi def link Ttn blue

syn match Thidden /^#.*/
hi def link Thidden base01

syn match Ttag  /\<[#@]\S\+\>/ containedin=ALLBUT,Thidden
syn match Ttag  /+\S*\>/ containedin=ALLBUT,Thidden
syn match Ttag  /\S\+:\S\+/ containedin=ALLBUT,Thidden
hi def link Ttag base01u

syn match Tunderline /\*.*\*/ containedin=ALLBUT,Ttag,Thidden
syn match Tunderline /\(^\s*\* \)\@<=[^#@\t]*\S\(\s*\([:#@\t]\|$\)\)\@=/
hi def link Tunderline base1u

syn match Tbold /\(^\s*\)\@<=[0-9]\+\./
syn match Tbold /\(^\s*\)\@<=\(-\|\*\)/
syn match Tbold /\(^\s*\)\@<=[a-zA-Z]\./
syn match Tbold /\(^\s*\)\@<=(\S)/
hi def link Tbold base2

syn match Thighlight /\(^\s*- \)\@<=[^#@\t]*\S\(\s*\([:#@\t]\|$\)\)\@=/
hi def link Thighlight base1

syn match Tco /^\t*$.*/
syn match Tco /^\t*\~.*/
syn match Tco /^\t*>.*/
hi def link Tco blue

" syn match Tnormal /.*/ contains=ALL
" hi def link Tnormal base01

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"
