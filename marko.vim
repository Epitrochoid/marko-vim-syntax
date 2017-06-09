" Vim syntax file
" Language: Concise Marko

if exists("b:current_syntax")
  finish
endif

" keywords
" Note: consider creating regex for first word on line
" that is not within braces ([]) for elements/components
syntax keyword markup div label
syntax keyword ident class style
syntax keyword control if for
syntax keyword storage const let var

" matches
syntax match singleLineComment /\v\/\/.*$/

" regions
syntax region htmlComment start=/<\!--/ end=/-->/
syntax region blockComment start=/\v\/\*/ end=/\v\*\//
syntax region singleQuoteString start=/\v'/ skip=/\v\\\'/ end=/\v'/
syntax region doubleQuoteString start=/\v"/ skip=/\v\\\"/ end=/\v"/

" link keywords
highlight link markup StorageClass
highlight link control Statement
highlight link ident Identifier
highlight link storage StorageClass

" link matches
highlight link singleLineComment Comment

" link regions
highlight link htmlComment Comment
highlight link blockComment Comment
highlight link singleQuoteString String
highlight link doubleQuoteString String

let b:current_syntax = "marko"
