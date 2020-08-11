syn match base01 /^#.*$/ containedin=ALL

syn match Tcolumn6 /.\{-}\(,\|$\)/ nextgroup=Tcolumn0
syn match Tcolumn5 /.\{-}\(,\|$\)/ nextgroup=Tcolumn6
syn match Tcolumn4 /.\{-}\(,\|$\)/ nextgroup=Tcolumn5
syn match Tcolumn3 /.\{-}\(,\|$\)/ nextgroup=Tcolumn4
syn match Tcolumn2 /.\{-}\(,\|$\)/ nextgroup=Tcolumn3
syn match Tcolumn1 /.\{-}\(,\|$\)/ nextgroup=Tcolumn2
syn match Tcolumn0 /.\{-}\(,\|$\)/ nextgroup=Tcolumn1
syn match Tcolumn6title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn0title
syn match Tcolumn5title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn6title
syn match Tcolumn4title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn5title
syn match Tcolumn3title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn4title
syn match Tcolumn2title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn3title
syn match Tcolumn1title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn2title
syn match Tcolumn0title /\%1l.\{-}\(,\|$\)/ nextgroup=Tcolumn1title

syn match Tdiv /,/ containedin=ALL
hi def link Tdiv base01

hi def link Tcolumn0 blue
hi def link Tcolumn0title blueu

hi def link Tcolumn1 magenta
hi def link Tcolumn1title magentau

hi def link Tcolumn2 yellow
hi def link Tcolumn2title yellowu

hi def link Tcolumn3 violet
hi def link Tcolumn3title violetu

hi def link Tcolumn4 green
hi def link Tcolumn4title greenu

hi def link Tcolumn5 cyan
hi def link Tcolumn5title cyanu

hi def link Tcolumn6 orange
hi def link Tcolumn6title orangeu

setl nowrap
