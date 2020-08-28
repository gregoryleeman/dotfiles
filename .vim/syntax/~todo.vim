let b:current_syntax = "todo"

exe "hi! Folded cterm=NONE ctermfg=".g:base2." ctermbg=NONE"

syn match Ta /^(A)/ containedin=ALL
hi def link Ta red
syn match Tta /\(^(A)\)\@<=.*/
hi def link Tta base1

syn match Tb /^(B)/ containedin=ALL
hi def link Tb blue
syn match Ttb /\(^(B)\)\@<=.*/
hi def link Ttb base1

syn match Tc /^(C)/ containedin=ALL
hi def link Tc yellow
syn match Ttc /\(^(C)\)\@<=.*/
hi def link Ttc base1

syn match Te /^(E)/ containedin=ALL
hi def link Te yellow
syn match Tte /\(^(E)\)\@<=.*/
hi def link Tte base1

syn match Tr /^(R)/ containedin=ALL
hi def link Tr cyan
syn match Ttr /\(^(R)\)\@<=.*/
hi def link Ttr base1

syn match Th /^(H)/ containedin=ALL
hi def link Th orange
syn match Tth /\(^(H)\)\@<=.*/
hi def link Tth base1

syn match Ts /^(S)/ containedin=ALL
hi def link Ts magenta
syn match Tts /\(^(S)\)\@<=.*/
hi def link Tts base01

syn match Tw /^(W)/ containedin=ALL
hi def link Tw magenta
syn match Ttw /\(^(W)\)\@<=.*/
hi def link Ttw base01

syn match Tm /^(M)/ containedin=ALL
hi def link Tm violet
syn match Ttm /\(^(M)\)\@<=.*/
hi def link Ttm base01


syn match T0 /@0\S*\>/ containedin=ALL
hi def link T0 cyanu
syn match T1 /@1\S*\>/ containedin=ALL
hi def link T1 orangeu
syn match T2 /@2\S*\>/ containedin=ALL
hi def link T2 blueu
syn match T3 /@3\S*\>/ containedin=ALL
hi def link T3 yellowu
syn match T4 /@4\S*\>/ containedin=ALL
hi def link T4 violetu
syn match T5 /@5\S*\>/ containedin=ALL
hi def link T5 magentau
syn match T6 /@6\S*\>/ containedin=ALL
hi def link T6 greenu
syn match T7 /@7\S*\>/ containedin=ALL
hi def link T7 redu

syn match Tbold /\(^# \)\@<=.*[+@][^_]*$/ containedin=ALL
hi def link Tbold base3u
syn match Ttitle /\(^# \)\@<=.*[+@].*/ containedin=ALL
hi def link Ttitle base1u
syn match Ttcontext /.*\(@\)\@=/
hi def link Ttcontext base2

syn match Tx /^x .*/
hi def link Tx green
syn match Tl /^l .*/
hi def link Tl red
syn match Tn /^n .*/
hi def link Tn base01

syn match Thidden /^#.*/
hi def link Thidden base01

syn match Ttag /\<[#]\S\+\>/ containedin=ALL
syn match Ttag /+\S*\>/ containedin=ALL
hi def link Ttag base01u

syn match Tcomment /^$ .*/
hi def link Tcomment blue
