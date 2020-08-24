let b:current_syntax = "workflowy"

syn match Ta /\(^\s*\)\@<=a / containedin=ALL
hi def link Ta red
syn match Tta /\(^\s*a \)\@<=.*/
hi def link Tta base1

syn match Tb /\(^\s*\)\@<=b / containedin=ALL
hi def link Tb blue
syn match Ttb /\(^\s*b \)\@<=.*/
hi def link Ttb base1

syn match Tc /\(^\s*\)\@<=c / containedin=ALL
hi def link Tc yellow
syn match Ttc /\(^\s*c \)\@<=.*/
hi def link Ttc base1

syn match Tp /\(^\s*\)\@<=p / containedin=ALL
hi def link Tp base3
syn match Ttp /\(^\s*p \)\@<=.*/
hi def link Ttp base1u

syn match Th /\(^\s*\)\@<=h / containedin=ALL
hi def link Th orange
syn match Tth /\(^\s*h \)\@<=.*/
hi def link Tth base1

syn match Te /\(^\s*\)\@<=e / containedin=ALL
hi def link Te orange
syn match Tte /\(^\s*e \)\@<=.*/
hi def link Tte base1

syn match Tw /\(^\s*\)\@<=w / containedin=ALL
hi def link Tw magenta
syn match Ttw /\(^\s*w \)\@<=.*/
hi def link Ttw base1

syn match Tm /\(^\s*\)\@<=m / containedin=ALL
hi def link Tm violet
syn match Ttm /\(^\s*m \)\@<=.*/
hi def link Ttm base1

syn match Tn /@n\S*/ containedin=ALL
hi def link Tn blueu
syn match Ttn /.*\(@n\)\@=/
hi def link Ttn base2

syn match Tv /@v\S*/ containedin=ALL
hi def link Tv violetu
syn match Ttv /.*\(@v\)\@=/
hi def link Ttv base1

syn match Tt /@t\S*/ containedin=ALL
hi def link Tt cyanu
syn match Ttt /.*\(@t\)\@=/
hi def link Ttt base01

syn match Tx /\(^\s*\)\@<=x/ containedin=ALL
hi def link Tx green
syn match Ttx /\(^\s*x\)\@<=.*$/ containedin=ALL
hi def link Ttx green

syn match Tl /\(^\s*\)\@<=l/ containedin=ALL
hi def link Tl red
syn match Ttl /\(^\s*l\)\@<=.*$/ containedin=ALL
hi def link Ttl red

syn match Ttag  /\<[#@]\S\+\>/ containedin=ALL
syn match Ttag  /+\S*\>/ containedin=ALL
syn match Ttag  /\S\+:\S\+/ containedin=ALL
hi def link Ttag base01u

syn match Tunderline /\(^\s*\* \)\@<=[^#@\t]*\S\(\s*\([:#@\t]\|$\)\)\@=/
syn match Tunderline /\(^\s*\* \)\@<=.*$/
hi def link Tunderline base1u

syn match Tbold /\(^\s*\)\@<=[0-9]\+\./
syn match Tbold /\(^\s*\)\@<=\(-\|\*\)/
hi def link Tbold base2

syn match Tcomment /\(^\s*\)\@<=$\s.*/
syn match Tcomment /\(^\s*\)\@<=\~.*/
syn match Tcomment /\(^\s*\)\@<=>\s.*/
hi def link Tcomment blue

syn match Thidden /\(^\s*\)\@<=# .*/
hi def link Thidden base01

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"
