if exists("b:current_syntax")
    finish
endif

syn cluster christmastreeGlitters contains=christmastreeGlitterSmall,christmastreeGlitterLarge
syn match christmastreeStar /☆/
syn region christmastreeLeaves start=/\s\@<=[o.]/ end=/[o.]\%(\s\|\_$\)\@=/ contains=@christmastreeGlitters oneline keepend
syn match christmastreeGlitterLarge /o/ contained containedin=christmastreeLeaves
syn match christmastreeGlitterSmall /\*/ contained containedin=christmastreeLeaves
syn match christmastreeFlowerpot /\[_\+\]/
syn match christmastreeFlowerpot /\\_\+\//

hi def link christmastreeStar Special
hi def link christmastreeLeaves String
hi def link christmastreeGlitterSmall Constant
hi def link christmastreeGlitterLarge Identifier
hi def link christmastreeFlowerpot PreProc

let b:current_syntax = "christmastree"
