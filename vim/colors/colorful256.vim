" Vim color file - colorful256
" Generated by http://bytefluent.com/vivify 2014-06-25
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "colorful256"

"hi IncSearch -- no settings --
hi WildMenu guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi SignColumn guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi SpecialComment guifg=#8787ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi Typedef guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Title guifg=#ff00af guibg=#000000 guisp=#000000 gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi Folded guifg=#ffffff guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=15 ctermbg=58 cterm=NONE
hi PreCondit guifg=#ff00ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Include guifg=#ff00ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=15 ctermbg=58 cterm=NONE
hi StatusLineNC guifg=#af5f5f guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=131 ctermbg=15 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#df00df guibg=#000000 guisp=#000000 gui=NONE ctermfg=164 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=#000000 guibg=#00af00 guisp=#00af00 gui=NONE ctermfg=NONE ctermbg=34 cterm=NONE
hi ErrorMsg guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi Ignore -- no settings --
hi Debug guifg=#8787ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Identifier guifg=#ff5fff guibg=#000000 guisp=#000000 gui=NONE ctermfg=207 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#8787ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi Conditional guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Todo guifg=#df0000 guibg=#dfdf00 guisp=#dfdf00 gui=NONE ctermfg=160 ctermbg=184 cterm=NONE
hi Special guifg=#8787ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi LineNr guifg=#00ff87 guibg=#000000 guisp=#000000 gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#5f5f00 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=58 ctermbg=15 cterm=NONE
hi Normal guifg=#b2b2b2 guibg=#000000 guisp=#000000 gui=NONE ctermfg=249 ctermbg=NONE cterm=NONE
hi Label guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#000000 guibg=#ffdf00 guisp=#ffdf00 gui=NONE ctermfg=NONE ctermbg=220 cterm=NONE
hi Search guifg=#ffffff guibg=#df0000 guisp=#df0000 gui=NONE ctermfg=15 ctermbg=160 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#8787ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi Statement guifg=#00ffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#808000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=3 ctermbg=NONE cterm=NONE
hi Character guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Float guifg=#ff875f guibg=#000000 guisp=#000000 gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi Number guifg=#ff875f guibg=#000000 guisp=#000000 gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi Boolean guifg=#00ffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Operator guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
hi TabLineFill guifg=#5f5f00 guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=58 ctermbg=58 cterm=NONE
hi Question guifg=#000000 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=NONE ctermbg=11 cterm=NONE
hi WarningMsg guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi DiffDelete guifg=#ff5fff guibg=#000000 guisp=#000000 gui=NONE ctermfg=207 ctermbg=NONE cterm=NONE
hi ModeMsg guifg=#000000 guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=NONE ctermbg=10 cterm=NONE
"hi CursorColumn -- no settings --
hi Define guifg=#ff00ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Function guifg=#ff5fff guibg=#000000 guisp=#000000 gui=NONE ctermfg=207 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#ffffff guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=15 ctermbg=58 cterm=NONE
hi PreProc guifg=#ff00ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#000000 guibg=#00ffdf guisp=#00ffdf gui=NONE ctermfg=NONE ctermbg=50 cterm=NONE
hi MoreMsg guifg=#00af00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit guifg=#df8700 guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=172 ctermbg=15 cterm=NONE
hi Exception guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Keyword guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Type guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
"hi DiffChange -- no settings --
hi Cursor guifg=#000000 guibg=#0087ff guisp=#0087ff gui=NONE ctermfg=NONE ctermbg=33 cterm=NONE
"hi SpellLocal -- no settings --
hi Error guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi PMenu guifg=#000000 guibg=#df00ff guisp=#df00ff gui=NONE ctermfg=NONE ctermbg=165 cterm=NONE
hi SpecialKey guifg=#00af87 guibg=#000000 guisp=#000000 gui=NONE ctermfg=36 ctermbg=NONE cterm=NONE
hi Constant guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#8787ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi String guifg=#ff0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#00ff87 guisp=#00ff87 gui=NONE ctermfg=NONE ctermbg=48 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#00af00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi Structure guifg=#00afff guibg=#000000 guisp=#000000 gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi Macro guifg=#ff00ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
hi TabLine guifg=#c0c0c0 guibg=#5f5f00 guisp=#5f5f00 gui=NONE ctermfg=7 ctermbg=58 cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
"hi clear -- no settings --
hi taglistcomment guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi taglisttitle guifg=#ff00af guibg=#000000 guisp=#000000 gui=NONE ctermfg=199 ctermbg=NONE cterm=NONE
hi user2 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi taglisttagname guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE
hi user4 guifg=#00ffdf guibg=#0000df guisp=#0000df gui=NONE ctermfg=50 ctermbg=20 cterm=NONE
hi user5 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user3 guifg=#00ff00 guibg=#0000df guisp=#0000df gui=NONE ctermfg=10 ctermbg=20 cterm=NONE
hi user1 guifg=#ffffff guibg=#0000df guisp=#0000df gui=NONE ctermfg=15 ctermbg=20 cterm=NONE
hi taglistfilename guifg=#ffffff guibg=#870087 guisp=#870087 gui=NONE ctermfg=15 ctermbg=90 cterm=NONE
hi taglisttagscope guifg=#000000 guibg=#008700 guisp=#008700 gui=NONE ctermfg=NONE ctermbg=28 cterm=NONE