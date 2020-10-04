let b:current_syntax = "workflowy"

syn match Tx /\(^\s*\)\@<=x /
hi def link Tx green

syn match Tdone /\(^\s*x \)\@<=.*/
hi def link Tdone base01

syn match Timportant /!important/ containedin=ALL
hi def link Timportant redu
syn match Tevent /@event/ containedin=ALL
hi def link Tevent yellowu
syn match Twaiting /@waiting/ containedin=ALL
hi def link Twaiting magentau
syn match Tmaybe /@maybe/ containedin=ALL
hi def link Tmaybe violetu
syn match Trepeat /@repeat/ containedin=ALL
hi def link Trepeat cyanu
syn match Tblocked /@blocked/ containedin=ALL
hi def link Tblocked orangeu
syn match Ttoday /day\:today/ containedin=ALL
hi def link Ttoday blueu
syn match Tscheduled /@scheduled/ containedin=ALL
hi def link Tscheduled yellowu

syn match Ttag  /[#@]\S\+/ containedin=ALL
syn match Ttag  /!\S\+/ containedin=ALL
syn match Ttag  /+\S*/ containedin=ALL
hi def link Ttag base01u

syn match Tunderline /\(^\s*\* \)\@<=[^#@\t]*\S\(\s*\([:#@\t]\|$\)\)\@=/
syn match Tunderline /\(^\s*\)\@<=_.*_$/
syn match Tunderline /\(^\s*\* \)\@<=.*$/
hi def link Tunderline base1u

syn match Tbold /\(^\s*\)\@<=[0-9]\+\. /
syn match Tbold /\(^\s*\)\@<=\(-\|\*\) /
hi def link Tbold base2

syn match Tcomment /\(^\s*\)\@<=$\s*.*/
syn match Tcomment /\(^\s*\)\@<=\~\s*.*/
syn match Tcomment /\(^\s*\)\@<=>\s*.*/
hi def link Tcomment blue

syn match Thidden /\(^\s*\)\@<=# .*/
hi def link Thidden base01


exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"
