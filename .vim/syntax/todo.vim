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

syn match Tday /@0\S*\>/ containedin=ALL
hi def link Tday cyanu
syn match Tmorn /@1\S*\>/ containedin=ALL
hi def link Tmorn orangeu
syn match Twork /@2\S*\>/ containedin=ALL
hi def link Twork blueu
syn match Teve /@3\S*\>/ containedin=ALL
hi def link Teve yellowu
syn match Tpaint /@4\S*\>/ containedin=ALL
hi def link Tpaint violetu
syn match Tbed /@5\S*\>/ containedin=ALL
hi def link Tbed magentau

syn match Ttitle /\(^# \)\@<=.*[+@].*/ containedin=ALL
hi def link Ttitle base1u

syn match Ttcontext /.*\(@[0-5]\)\@=/
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
