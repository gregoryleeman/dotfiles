let b:current_syntax = "workflowy"

syn match Ta /\(^\s*\)\@<=\[a\]/ containedin=ALL
hi def link Ta orange
syn match Tb /\(^\s*\)\@<=\[b\]/ containedin=ALL
syn match Tb /\(^\s*\)\@<=\[ \]/ containedin=ALL
hi def link Tb blue
syn match Tc /\(^\s*\)\@<=\[c\]/ containedin=ALL
hi def link Tc yellow
syn match To /\(^\s*\)\@<=\[o\].*/ containedin=ALL
hi def link To blue
syn match Ts /\(^\s*\)\@<=\[s\]/ containedin=ALL
hi def link Ts cyan
syn match Tw /\(^\s*\)\@<=\[w\]/ containedin=ALL
hi def link Tw magenta
syn match Tm /\(^\s*\)\@<=\[m\]/ containedin=ALL
hi def link Tm violet
syn match Tr /\(^\s*\)\@<=\[r\]/ containedin=ALL
hi def link Tr cyan
syn match Tx /\(^\s*\)\@<=\[x\].*/ containedin=ALL
hi def link Tx green
syn match Tl /\(^\s*\)\@<=\[l\].*/ containedin=ALL
hi def link Tl red
syn match Tskip /\(^\s*\)\@<=\[[mws]\].*/ containedin=ALL
hi def link Tskip base01

syn match Thidden /^#.*/
hi def link Thidden base01

syn match Ttoday /\(^\s*\)\@<=.*@today.*/ containedin=ALL
hi def link Ttoday blue

syn match Ttag  /\<[#@]\S\+\>/ containedin=ALL
syn match Ttag  /+\S*\>/ containedin=ALL
syn match Ttag  /\S\+:\S\+/ containedin=ALL
hi def link Ttag base01u

" syn match Tunderline /\(^\s*\* \)\@<=[^#@\t]*\S\(\s*\([:#@\t]\|$\)\)\@=/
syn match Tunderline /\(^\s*\* \)\@<=.*$/
hi def link Tunderline base1u

syn match Tbold /\(^\s*\)\@<=[0-9]\+\./
syn match Tbold /\(^\s*\)\@<=\(-\|\*\)/
hi def link Tbold base2

syn match Tcomment /\(^\s*\)\@<=$ .*/
syn match Tcomment /\(^\s*\)\@<=\~.*/
syn match Tcomment /\(^\s*\)\@<=> .*/
hi def link Tcomment blue

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"
