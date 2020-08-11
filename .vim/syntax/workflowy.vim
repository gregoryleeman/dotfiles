let b:current_syntax = "workflowy"

syn match Ta /@a\>/ containedin=Ttag
hi def link Ta redu
" syn match Tta /.*@a\>/
" hi def link Tta red

syn match Tb /@b\>/ containedin=ALL
hi def link Tb blueu
" syn match Ttb /.*@b\>/
" hi def link Ttb blue

syn match Tc /@c\>/ containedin=ALL
hi def link Tc yellowu
" syn match Ttc /.*@c\>/
" hi def link Ttc yellow

syn match Tw /@waiting\>/ containedin=Ttag
hi def link Tw magentau
" syn match Ttw /.*@waiting\>/
" hi def link Ttw base01

syn match Tm /@maybe\>/ containedin=Ttag
hi def link Tm violetu
" syn match Ttm /.*@maybe\>/
" hi def link Ttm base01

" syn match Tt /@today\>/ containedin=ALL
" hi def link Tt base2u
" syn match Ttt /.*@today\>/
" hi def link Ttt base1

syn match Tx /\(^\s*\)\@<=x /
hi def link Tx green
syn match Ttx /\(^\s*x \)\@<=.*/
hi def link Ttx green

syn match Tl /\(^\s*\)\@<=l /
hi def link Tl red
syn match Ttl /\(^\s*l \)\@<=.*/
hi def link Ttl base01

syn match Tn /\(^\s*\)\@<=n /
hi def link Tn base01
syn match Ttn /\(^\s*n \)\@<=.*/
hi def link Ttn base01

syn match Ttag  /\<[#@]\S\+\>/ containedin=ALL
syn match Ttag  /+\S*\>/ containedin=ALL
syn match Ttag  /\S\+:\S\+/ containedin=ALL
hi def link Ttag base01u

" syn match Tunderline /\(^\s*\* \)\@<=[^#@\t]*\S\(\s*\([:#@\t]\|$\)\)\@=/
" syn match Tunderline /\(^\s*\* \)\@<=.*$/
" hi def link Tunderline base1u

syn match Tbold /\(^\s*\)\@<=[0-9]\+\./
syn match Tbold /\(^\s*\)\@<=\(-\|\*\)/
hi def link Tbold base2

syn match Tcomment /\(^\s*\)\@<=$ .*/
syn match Tcomment /\(^\s*\)\@<=\~.*/
syn match Tcomment /\(^\s*\)\@<=> .*/
hi def link Tcomment blue

syn match Thidden /\(^\s*\)\@<=# .*/
hi def link Thidden base01

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"
