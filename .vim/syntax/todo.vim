let b:current_syntax = "todo"


syn match Ta /^(A)/ containedin=ALL
hi def link Ta orange
syn match Tta /\(^(A)\)\@<=.*/
hi def link Tta base1

syn match Tb /^(B)/ containedin=ALL
hi def link Tb blue
syn match Ttb /\(^(B)\)\@<=.*/
hi def link Ttb base1

syn match Tu /^(U)/ containedin=ALL
hi def link Tu base1
syn match Ttu /\(^(U)\)\@<=.*/
hi def link Ttu base1

syn match Tc /^(C)/ containedin=ALL
hi def link Tc yellow
syn match Ttc /\(^(C)\)\@<=.*/
hi def link Ttc base1

syn match Tr /^(R)/ containedin=ALL
hi def link Tr cyan
syn match Ttr /\(^(R)\)\@<=.*/
hi def link Ttr base1

syn match Te /^(E)/ containedin=ALL
hi def link Te cyan
syn match Tte /\(^(E)\)\@<=.*/
hi def link Tte base1

syn match Th /^(H)/ containedin=ALL
hi def link Th yellow
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

" syn match Tn /@\S\+/ containedin=ALL
" hi def link Tn base2u
syn match Ttn /.*@\S\+.*/
hi def link Ttn base2

syn match Tdone              /^x .*/
hi def link Tdone green
syn match Tmissed            /^l .*/
hi def link Tmissed red

syn match Ttitle /\(^# \)\@<=.*[+@].*/ containedin=ALL
hi def link Ttitle base1u

syn match Thidden /^#.*/
hi def link Thidden base01

syn match Ttag               /\<[#@]\S\+\>/ containedin=ALL
syn match Ttag               /+\S*\>/ containedin=ALL
hi def link Ttag base01u

syn match Tcomment /^$ .*/
hi def link Tcomment base01
