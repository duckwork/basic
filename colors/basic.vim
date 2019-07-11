" Name: basic
" Author: Case Duckworth <acdw@acdw.net>
" URL: https://github.com/duckwork/basic
" License: MIT

hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "basic"

" Clear all highlights
for gp in [
  \ "Normal", "NormalNC", "Conceal", "Directory", "NonText", "VertSplit",
  \ "EndOfBuffer", "SpecialKey", "LineNr", "CursorLineNr", "CursorLine",
  \ "CursorColumn", "ColorColumn", "Search", "IncSearch", "Substitute",
  \ "StatusLine", "StatusLineNC", "TabLine", "TabLineSel", "TabLineFill",
  \ "DiffAdd", "DiffDelete", "DiffChange", "DiffText", "ModeMsg", "MoreMsg",
  \ "Question", "WarningMsg", "ErrorMsg", "Folded", "FoldColumn",
  \ "SignColumn", "MatchParen", "Pmenu", "PmenuSel", "PmenuSbar",
  \ "PmenuThumb", "Visual", "VisualNOS", "WildMenu", "SpellBad",
  \ "SpellLocal", "SpellCap", "SpellRare", "Title", "Comment", "Constant",
  \ "String", "Statement", "PreProc", "Identifier", "Type", "Special",
  \ "Underlined", "Error", "Todo", "Title"
  \ ]
    exe "hi" gp "NONE"
endfor

hi Normal guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231

hi NonText guifg=#808080 ctermfg=248
hi! link EndOfBuffer NonText
hi! link FoldColumn NonText
hi! link SignColumn NonText
hi! link ModeMsg NonText
hi! link SpecialKey NonText
hi! link VertSplit NonText

hi DiffAdd guifg=#008787 ctermbg=30 gui=inverse cterm=inverse
hi DiffDelete guifg=#878700 ctermbg=100 gui=inverse cterm=inverse
hi DiffChange guifg=#870087 ctermfg=90 gui=inverse cterm=inverse
hi DiffText guifg=#ff00ff ctermfg=201 gui=inverse,underline cterm=inverse,underline

hi Search guibg=#00ffff ctermbg=51
hi IncSearch guibg=#00ffff ctermbg=51 gui=underline cterm=underline
hi! link Substitute Search
hi Visual guibg=#ffff00 ctermbg=226
hi! link VisualNOC Visual

hi MatchParen guifg=#0000ff gui=inverse ctermfg=21 cterm=inverse

hi Pmenu guibg=#dadada
hi! link PmenuSel Visual
hi PmenuSbar guibg=#eeeeee ctermbg=255
hi! link PmenuThumb Search

hi CursorLine NONE

hi StatusLine guifg=#0000ff guibg=#dadada gui=underline ctermfg=21 cterm=underline ctermbg=253
hi StatusLineNC guifg=#808080 guibg=#eeeeee ctermbg=255 ctermfg=248 gui=underline cterm=underline
hi! link TabLineSel StatusLine
hi! link TabLine StatusLineNC
hi! link TabLineFill TabLine

hi LineNr guifg=#808080 ctermfg=248 guibg=#eeeeee ctermbg=255
hi CursorLineNr guifg=#0000ff ctermfg=21 ctermbg=253 guibg=#dadada
hi Folded guifg=#808080 ctermfg=248 guibg=#eeeeee ctermbg=255 gui=italic cterm=italic
hi ColorColumn guibg=#eeeeee ctermbg=255

" Syntax
hi Comment gui=italic cterm=italic guifg=#8700ff ctermfg=93
hi Constant guifg=#000087 ctermfg=18
hi Identifier gui=bold cterm=bold
hi Statement gui=italic cterm=italic
hi Error guifg=#ff0000 ctermfg=196
