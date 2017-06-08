" Vim syntax file
" Language: Concise Marko

if exists("b:current_syntax")
  finish
endif

syntax keyword markup div label
syntax keyword ident class style
syntax keyword control if for

highlight link markup StorageClass
highlight link control Statement
highlight link ident Identifier

let b:current_syntax = "marko"
