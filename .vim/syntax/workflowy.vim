let b:current_syntax = "workflowy"

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

syn match Tcomment /\(^\s*\)\@<=$\s.*/
syn match Tcomment /\(^\s*\)\@<=\~.*/
syn match Tcomment /\(^\s*\)\@<=>\s.*/
hi def link Tcomment blue

syn match Thidden /\(^\s*\)\@<=# .*/
hi def link Thidden base01

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"
