" Lucius vim color file (modified)
" Maintainer: Jonathan Filip <jfilip1024@gmail.com>
" Version: 6.1.0

hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name="lucius_256term_dark"


" Description:
" This color scheme was modified from lucius in www.vim.org


set background=dark

hi Normal       ctermfg=253    ctermbg=234       cterm=none

hi Comment      ctermfg=240    ctermbg=NONE      cterm=none

hi Constant     ctermfg=187    ctermbg=NONE      cterm=none
hi BConstant    ctermfg=187    ctermbg=NONE      cterm=bold

hi Identifier   ctermfg=150    ctermbg=NONE      cterm=none
hi BIdentifier  ctermfg=150    ctermbg=NONE      cterm=bold

hi Statement    ctermfg=74     ctermbg=NONE      cterm=none
hi BStatement   ctermfg=74     ctermbg=NONE      cterm=bold

hi PreProc      ctermfg=115    ctermbg=NONE      cterm=none
hi BPreProc     ctermfg=115    ctermbg=NONE      cterm=bold

hi Type         ctermfg=116    ctermbg=NONE      cterm=none
hi BType        ctermfg=116    ctermbg=NONE      cterm=bold

hi Special      ctermfg=182    ctermbg=NONE      cterm=none
hi BSpecial     ctermfg=182    ctermbg=NONE      cterm=bold

" == Text Markup ==
hi Underlined   ctermfg=fg     ctermbg=NONE      cterm=underline
hi Error        ctermfg=167    ctermbg=236       cterm=none
hi Todo         ctermfg=186    ctermbg=NONE      cterm=none
hi MatchParen   ctermfg=bg     ctermbg=192       cterm=bold
hi NonText      ctermfg=24     ctermbg=NONE      cterm=none
hi SpecialKey   ctermfg=23     ctermbg=NONE      cterm=none
hi Title        ctermfg=74     ctermbg=NONE      cterm=bold

" == Text Selection ==
hi Cursor       ctermfg=bg     ctermbg=fg        cterm=none
hi CursorIM     ctermfg=bg     ctermbg=fg        cterm=none
hi CursorColumn ctermfg=NONE   ctermbg=237       cterm=none
hi CursorLine   ctermfg=NONE   ctermbg=237       cterm=none
hi Visual       ctermfg=NONE   ctermbg=24        cterm=none
hi VisualNOS    ctermfg=fg     ctermbg=NONE      cterm=underline
hi IncSearch    ctermfg=bg     ctermbg=116       cterm=none
hi Search       ctermfg=bg     ctermbg=214       cterm=none

" == UI ==
hi Pmenu        ctermfg=bg     ctermbg=252       cterm=none
hi PmenuSel     ctermfg=fg     ctermbg=24        cterm=none
hi PMenuSbar    ctermfg=bg     ctermbg=254       cterm=none
hi PMenuThumb   ctermfg=fg     ctermbg=244       cterm=none
hi StatusLine   ctermfg=bg     ctermbg=252       cterm=bold
hi StatusLineNC ctermfg=240    ctermbg=252       cterm=none
hi TabLine      ctermfg=bg     ctermbg=252       cterm=none
hi TabLineFill  ctermfg=240    ctermbg=252       cterm=none
hi TabLineSel   ctermfg=fg     ctermbg=24        cterm=bold
hi VertSplit    ctermfg=245    ctermbg=252       cterm=none
hi Folded       ctermfg=bg     ctermbg=246       cterm=none
hi FoldColumn   ctermfg=bg     ctermbg=246       cterm=none

" == Spelling =="{{{
hi SpellBad     ctermfg=fg     ctermbg=160       cterm=undercurl
hi SpellCap     ctermfg=bg     ctermbg=226       cterm=undercurl
hi SpellRare    ctermfg=bg     ctermbg=214       cterm=undercurl
hi SpellLocal   ctermfg=bg     ctermbg=214       cterm=undercurl
"}}}

" == Diff ==
hi DiffAdd      ctermfg=fg     ctermbg=22        cterm=none
hi DiffChange   ctermfg=fg     ctermbg=58        cterm=none
hi DiffDelete   ctermfg=fg     ctermbg=52        cterm=none
hi DiffText     ctermfg=220    ctermbg=58        cterm=bold

" == Misc ==
hi Directory    ctermfg=151    ctermbg=NONE      cterm=none
hi ErrorMsg     ctermfg=196    ctermbg=NONE      cterm=none
hi SignColumn   ctermfg=145    ctermbg=233       cterm=none
hi LineNr       ctermfg=bg     ctermbg=246       cterm=none
hi MoreMsg      ctermfg=117    ctermbg=NONE      cterm=none
hi ModeMsg      ctermfg=fg     ctermbg=NONE      cterm=none
hi Question     ctermfg=fg     ctermbg=NONE      cterm=none
hi WarningMsg   ctermfg=173    ctermbg=NONE      cterm=none
hi WildMenu     ctermfg=NONE   ctermbg=24        cterm=none
hi ColorColumn  ctermfg=NONE   ctermbg=101       cterm=none
hi Ignore       ctermfg=bg


" == Tagbar Colors ==
hi link TagbarAccessPublic Constant
hi link TagbarAccessProtected Type
hi link TagbarAccessPrivate PreProc
