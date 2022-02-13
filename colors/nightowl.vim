" Dark Vim/Neovim color scheme.
"
" URL:     github.com/bluz71/vim-nightfly-guicolors
" License: MIT (https://opensource.org/licenses/MIT)

" Clear highlights and reset syntax only when changing colorschemes.
let g:colors_name='nightowl'

" Please check that Vim/Neovim is able to run this true-color only theme.
"
" If running in a terminal make sure termguicolors exists and is set.
if has('nvim')
    if has('nvim-0.4') && len(nvim_list_uis()) > 0 && nvim_list_uis()[0]['ext_termcolors'] && !&termguicolors
        " The nvim_list_uis test indicates terminal Neovim vs GUI Neovim.
        " Note, versions prior to Neovim 0.4 did not set 'ext_termcolors'.
        echomsg 'The termguicolors option must be set'
        finish
    endif
else " Vim
    if !has('gui_running') && !exists('&termguicolors')
        echomsg 'A modern version of Vim with termguicolors is required'
        finish
    elseif !has('gui_running') && !&termguicolors
        echomsg 'The termguicolors option must be set'
        echomsg 'Be aware macOS default Vim is broken, use Homebrew Vim instead'
        finish
    endif
endif

" By default do not color the cursor.
let g:nightflyCursorColor = get(g:, 'nightflyCursorColor', 0)

" By default do use italics in GUI versions of Vim.
let g:nightflyItalics = get(g:, 'nightflyItalics', 1)

" By default do not use a customized 'NormalFloat' highlight group (for Neovim
" floating windows).
let g:nightflyNormalFloat = get(g:, 'nightflyNormalFloat', 0)

" By default use the nightly color palette in the `:terminal`
let g:nightflyTerminalColors = get(g:, 'nightflyTerminalColors', 1)

" By default do not use a transparent background in GUI versions of Vim.
let g:nightflyTransparent = get(g:, 'nightflyTransparent', 0)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:nightflyUndercurls = get(g:, 'nightflyUndercurls', 1)

" By default do not underline matching parentheses.
let g:nightflyUnderlineMatchParen = get(g:, 'nightflyUnderlineMatchParen', 0)

" By default do display vertical split columns.
let g:nightflyVertSplits = get(g:, 'nightflyVertSplits', 1)

" Background and foreground
let s:black      = '#011627'
let s:white      = '#c3ccdc'
" Variations of blue-grey
let s:black_blue = '#081e2f'
let s:dark_blue  = '#092236'
let s:deep_blue  = '#0e293f'
let s:slate_blue = '#2c3043'
let s:regal_blue = '#1d3b53'
let s:steel_blue = '#4b6479'
let s:grey_blue  = '#7c8f8f'
let s:cadet_blue = '#a1aab8'
let s:ash_blue   = '#acb4c2'
let s:white_blue = '#d6deeb'
" Core theme colors
let s:yellow     = '#e3d18a'
let s:peach      = '#ffcb8b'
let s:tan        = '#ecc48d'
let s:orange     = '#f78c6c'
let s:red        = '#fc514e'
let s:watermelon = '#ff5874'
let s:violet     = '#c792ea'
let s:purple     = '#ae81ff'
let s:indigo     = '#5e97ec'
let s:blue       = '#82aaff'
let s:turquoise  = '#7fdbca'
let s:emerald    = '#21c7a8'
let s:green      = '#a1cd5e'
" Extra colors
let s:cyan_blue  = '#296596'

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:nightflyTerminalColors
    if has('nvim')
        let g:terminal_color_0  = s:regal_blue
        let g:terminal_color_1  = s:red
        let g:terminal_color_2  = s:green
        let g:terminal_color_3  = s:yellow
        let g:terminal_color_4  = s:blue
        let g:terminal_color_5  = s:violet
        let g:terminal_color_6  = s:turquoise
        let g:terminal_color_7  = s:white
        let g:terminal_color_8  = s:grey_blue
        let g:terminal_color_9  = s:watermelon
        let g:terminal_color_10 = s:emerald
        let g:terminal_color_11 = s:tan
        let g:terminal_color_12 = s:blue
        let g:terminal_color_13 = s:purple
        let g:terminal_color_14 = s:turquoise
        let g:terminal_color_15 = s:white_blue
    else
        let g:terminal_ansi_colors = [
                    \ s:regal_blue, s:red, s:green, s:yellow,
                    \ s:blue, s:violet, s:turquoise, s:white,
                    \ s:grey_blue, s:watermelon, s:emerald, s:tan,
                    \ s:blue, s:purple, s:turquoise, s:white_blue
                    \]
    endif
endif

" Background and text
if g:nightflyTransparent
    exec 'highlight Normal guibg=NONE' . ' guifg=' . s:white
else
    exec 'highlight Normal guibg=' . s:black . ' guifg=' . s:white
endif

" Custom nightfly highlight groups
exec 'highlight NightflyReset guifg=fg'
exec 'highlight NightflyVisual guibg=' . s:regal_blue
exec 'highlight NightflyWhite guifg=' . s:white
exec 'highlight NightflySlateBlue guifg=' . s:slate_blue
exec 'highlight NightflyRegalBlue guifg=' . s:regal_blue
exec 'highlight NightflySteelBlue guifg=' . s:steel_blue
exec 'highlight NightflyGreyBlue guifg=' . s:grey_blue
exec 'highlight NightflyCadetBlue guifg=' . s:cadet_blue
exec 'highlight NightflyAshBlue guifg=' . s:ash_blue
exec 'highlight NightflyWhiteBlue guifg=' . s:white_blue
exec 'highlight NightflyYellow guifg=' . s:yellow
exec 'highlight NightflyPeach guifg=' . s:peach
exec 'highlight NightflyTan guifg=' . s:tan
exec 'highlight NightflyOrange guifg=' . s:orange
exec 'highlight NightflyRed guifg=' . s:red
exec 'highlight NightflyWatermelon guifg=' . s:watermelon
exec 'highlight NightflyViolet guifg=' . s:violet
exec 'highlight NightflyPurple guifg=' . s:purple
exec 'highlight NightflyBlue guifg=' . s:blue
exec 'highlight NightflyIndigo guifg=' . s:indigo
exec 'highlight NightflyTurquoise guifg=' . s:turquoise
exec 'highlight NightflyEmerald guifg=' . s:emerald
exec 'highlight NightflyGreen guifg=' . s:green
exec 'highlight NightflyWhiteAlert guibg=bg guifg=' . s:white
exec 'highlight NightflyCadetBlueAlert guibg=bg guifg=' . s:cadet_blue
exec 'highlight NightflyYellowAlert guibg=bg guifg=' . s:yellow
exec 'highlight NightflyOrangeAlert guibg=bg guifg=' . s:orange
exec 'highlight NightflyRedAlert guibg=bg guifg=' . s:red
exec 'highlight NightflyPurpleAlert guibg=bg guifg=' . s:purple
exec 'highlight NightflyBlueAlert guibg=bg guifg=' . s:blue
exec 'highlight NightflyEmeraldAlert guibg=bg guifg=' . s:emerald

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg guifg=' . s:cadet_blue . ' gui=none'

" Comments
if g:nightflyItalics
    exec 'highlight Comment guifg=' . s:grey_blue . ' gui=italic'
else
    exec 'highlight Comment guifg=' . s:grey_blue
endif

" Functions
highlight! link Function NightflyBlue

" Strings
highlight! link String NightflyTan

" Booleans
highlight! link Boolean NightflyWatermelon

" Identifiers
highlight! link Identifier NightflyTurquoise

" Color of titles
exec 'highlight Title guifg=' . s:orange . ' gui=none'

" const, static
highlight! link StorageClass NightflyOrange

" void, intptr_t
exec 'highlight Type guifg=' . s:emerald . ' gui=none'

" Numbers
highlight! link Constant NightflyOrange

" Character constants
highlight! link Character NightflyPurple

" Exceptions
highlight! link Exception NightflyWatermelon

" ifdef/endif
highlight! link PreProc NightflyWatermelon

" case in switch statement
highlight! link Label NightflyTurquoise

" end-of-line '$', end-of-file '~'
exec 'highlight NonText guifg=' . s:steel_blue . ' gui=none'

" sizeof
highlight! link Operator NightflyWatermelon

" for, while
highlight! link Repeat NightflyViolet

" Search
exec 'highlight Search guibg=bg guifg=' . s:orange . ' gui=reverse'
exec 'highlight IncSearch guibg=bg guifg=' . s:peach

" '\n' sequences
highlight! link Special NightflyWatermelon

" if, else
exec 'highlight Statement guifg=' . s:violet . ' gui=none'

" struct, union, enum, typedef
highlight! link Structure NightflyIndigo

" Statusline, splits and tab lines
exec 'highlight StatusLine cterm=none guibg=' . s:slate_blue . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineNC cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
exec 'highlight Tabline cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
exec 'highlight TablineSel cterm=none guibg=' . s:slate_blue . ' guifg=' . s:blue . ' gui=none'
exec 'highlight TablineFill cterm=none guibg=' . s:slate_blue . ' guifg=' . s:slate_blue . ' gui=none'
exec 'highlight StatusLineTerm cterm=none guibg=' . s:slate_blue . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineTermNC cterm=none guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue . ' gui=none'
if g:nightflyVertSplits
    exec 'highlight VertSplit cterm=none guibg=' . s:slate_blue . ' guifg=' . s:slate_blue . ' gui=none'
else
    exec 'highlight VertSplit cterm=none guibg=' . s:black . ' guifg=' . s:black . ' gui=none'
end

" Visual selection
highlight! link Visual NightflyVisual
exec 'highlight VisualNOS guibg=' . s:regal_blue . ' guifg=fg gui=none'
exec 'highlight VisualInDiff guibg=' . s:regal_blue . ' guifg=' . s:white

" Errors, warnings and whitespace-eol
exec 'highlight Error guibg=bg guifg=' . s:red
exec 'highlight ErrorMsg guibg=bg guifg=' . s:red
exec 'highlight WarningMsg guibg=bg guifg=' . s:orange

" Auto-text-completion menu
exec 'highlight Pmenu guibg=' . s:deep_blue . ' guifg=fg'
exec 'highlight PmenuSel guibg=' . s:cyan_blue . ' guifg=' . s:white_blue
exec 'highlight PmenuSbar guibg=' . s:deep_blue
exec 'highlight PmenuThumb guibg=' . s:steel_blue
exec 'highlight WildMenu guibg=' . s:cyan_blue . ' guifg=' . s:white_blue

" Spelling errors
if g:nightflyUndercurls
    exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:red
    exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE gui=undercurl guisp=' . s:blue
else
    exec 'highlight SpellBad ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:red . ' gui=underline guisp=' . s:red
    exec 'highlight SpellCap ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=NONE cterm=underline guibg=NONE guifg=' . s:blue . ' gui=underline guisp=' . s:blue
endif

" Misc
exec 'highlight Question guifg=' . s:green . ' gui=none'
exec 'highlight MoreMsg guifg=' . s:red . ' gui=none'
exec 'highlight LineNr guibg=bg guifg=' . s:steel_blue . ' gui=none'
if g:nightflyCursorColor
    exec 'highlight Cursor guifg=bg guibg=' . s:blue
else
    exec 'highlight Cursor guifg=bg guibg=' . s:cadet_blue
endif
exec 'highlight lCursor guifg=bg guibg=' . s:cadet_blue
exec 'highlight CursorLineNr cterm=none guibg=' . s:dark_blue . ' guifg=' . s:blue . ' gui=none'
exec 'highlight CursorColumn guibg=' . s:dark_blue
exec 'highlight CursorLine cterm=none guibg=' . s:dark_blue
exec 'highlight Folded guibg=' . s:dark_blue . ' guifg='. s:green
exec 'highlight FoldColumn guibg=' . s:slate_blue . ' guifg=' . s:green
exec 'highlight SignColumn guibg=bg guifg=' . s:green
exec 'highlight Todo guibg=' . s:yellow . ' guifg=' . s:black
exec 'highlight SpecialKey guibg=bg guifg=' . s:blue
if g:nightflyUnderlineMatchParen
    exec 'highlight MatchParen guibg=bg gui=underline'
else
    highlight! link MatchParen NightflyVisual
endif
exec 'highlight Ignore guifg=' . s:blue
exec 'highlight Underlined guifg=' . s:green . ' gui=none'
exec 'highlight QuickFixLine guibg=' . s:deep_blue
highlight! link Delimiter NightflyWhite
highlight! link qfFileName NightflyEmerald

" Color column (after line 80)
exec 'highlight ColorColumn guibg=' . s:black_blue

" Conceal color
exec 'highlight Conceal guibg=NONE guifg=' . s:ash_blue

" Neovim only highlight groups
if has('nvim')
    exec 'highlight Whitespace guifg=' . s:deep_blue
    exec 'highlight TermCursor guibg=' . s:cadet_blue . ' guifg=bg gui=none'
    if g:nightflyNormalFloat
        exec 'highlight NormalFloat guibg=bg guifg=' . s:cadet_blue
    else
        exec 'highlight NormalFloat guibg=' . s:dark_blue . ' guifg=fg'
    endif
    exec 'highlight FloatBorder guibg=bg guifg=' . s:slate_blue

    " Neovim Treesitter
    highlight! link TSAnnotation NightflyViolet
    highlight! link TSAttribute NightflyBlue
    highlight! link TSConstant NightflyTurquoise
    highlight! link TSConstBuiltin NightflyGreen
    highlight! link TSConstMacro NightflyViolet
    highlight! link TSConstructor NightflyEmerald
    highlight! link TSFuncBuiltin NightflyBlue
    highlight! link TSFuncMacro NightflyBlue
    highlight! link TSInclude NightflyWatermelon
    highlight! link TSKeywordOperator NightflyViolet
    highlight! link TSNamespace NightflyIndigo
    highlight! link TSParameter NightflyWhite
    highlight! link TSPunctSpecial NightflyWatermelon
    highlight! link TSSymbol NightflyPurple
    highlight! link TSTag NightflyBlue
    highlight! link TSTagDelimiter NightflyGreen
    highlight! link TSVariableBuiltin NightflyGreen
    highlight! link bashTSParameter NightflyTurquoise
    highlight! link cssTSPunctDelimiter NightflyWatermelon
    highlight! link cssTSType NightflyBlue
    highlight! link scssTSPunctDelimiter NightflyWatermelon
    highlight! link scssTSType NightflyBlue
    highlight! link yamlTSField NightflyBlue
    highlight! link yamlTSPunctDelimiter NightflyWatermelon
endif

" Git commits
highlight! link gitCommitBranch NightflyBlue
highlight! link gitCommitDiscardedFile NightflyWatermelon
highlight! link gitCommitDiscardedType NightflyBlue
highlight! link gitCommitHeader NightflyPurple
highlight! link gitCommitSelectedFile NightflyEmerald
highlight! link gitCommitSelectedType NightflyBlue
highlight! link gitCommitUntrackedFile NightflyWatermelon
highlight! link gitEmail NightflyBlue

" Git commit diffs
highlight! link diffAdded NightflyGreen
highlight! link diffChanged NightflyWatermelon
highlight! link diffIndexLine NightflyWatermelon
highlight! link diffLine NightflyBlue
highlight! link diffRemoved NightflyRed
highlight! link diffSubname NightflyBlue

" Misc languages and plugins
highlight! link bufExplorerHelp NightflyCadetBlue
highlight! link bufExplorerSortBy NightflyCadetBlue
highlight! link CleverFDefaultLabel NightflyWatermelon
highlight! link CtrlPMatch NightflyOrange
highlight! link Directory NightflyBlue
highlight! link HighlightedyankRegion NightflyRegalBlue
highlight! link jsonKeyword NightflyBlue
highlight! link jsonBoolean NightflyTurquoise
highlight! link jsonQuote NightflyWhite
highlight! link netrwClassify NightflyWatermelon
highlight! link netrwDir NightflyBlue
highlight! link netrwExe NightflyTan
highlight! link tagName NightflyTurquoise
highlight! link Cheat40Header NightflyBlue
highlight! link yamlBlockMappingKey NightflyBlue
highlight! link yamlFlowMappingKey NightflyBlue

if g:nightflyUnderlineMatchParen
    exec 'highlight MatchWord gui=underline guisp=' . s:orange
else
    highlight! link highlight NightflyOrange
endif
exec 'highlight snipLeadingSpaces guibg=bg guifg=fg'
exec 'highlight MatchWordCur guibg=bg'

" vimdiff/nvim -d
exec 'highlight DiffAdd guibg=' . s:emerald . ' guifg=' . s:black
exec 'highlight DiffChange guibg=' . s:slate_blue
exec 'highlight DiffDelete guibg=' . s:slate_blue . ' guifg=' . s:watermelon ' gui=none'
exec 'highlight DiffText guibg=' . s:blue . ' guifg=' . s:black . ' gui=none'

" Signify plugin
highlight! link SignifySignAdd NightflyEmeraldAlert
highlight! link SignifySignChange NightflyYellowAlert
highlight! link SignifySignDelete NightflyRedAlert

" FZF plugin
exec 'highlight fzf1 guifg=' . s:watermelon . ' guibg=' . s:slate_blue
exec 'highlight fzf2 guifg=' . s:blue . ' guibg=' . s:slate_blue
exec 'highlight fzf3 guifg=' . s:green . ' guibg=' . s:slate_blue
exec 'highlight fzfNormal guifg=' . s:ash_blue
exec 'highlight fzfFgPlus guifg=' . s:white_blue
exec 'highlight fzfBorder guifg=' . s:slate_blue
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" moonfly-statusline plugin
exec 'highlight User1 guibg=' . s:blue       . ' guifg=' . s:dark_blue
exec 'highlight User2 guibg=' . s:white      . ' guifg=' . s:dark_blue
exec 'highlight User3 guibg=' . s:purple     . ' guifg=' . s:dark_blue
exec 'highlight User4 guibg=' . s:watermelon . ' guifg=' . s:dark_blue
exec 'highlight User5 guibg=' . s:slate_blue . ' guifg=' . s:blue       . ' gui=none'
exec 'highlight User6 guibg=' . s:slate_blue . ' guifg=' . s:watermelon . ' gui=none'
exec 'highlight User7 guibg=' . s:slate_blue . ' guifg=' . s:blue       . ' gui=none'

" Coc plugin (see issue: https://github.com/bluz71/vim-nightfly-guicolors/issues/31)
highlight! link CocUnusedHighlight NightflyAshBlue

" indentLine plugin
if !exists('g:indentLine_defaultGroup') && !exists('g:indentLine_color_gui')
    let g:indentLine_color_gui = s:deep_blue
endif

" Neovim diagnostics
if has('nvim-0.6')
    " Neovim 0.6 diagnostic
    highlight! link DiagnosticError NightflyRed
    highlight! link DiagnosticWarn NightflyYellow
    highlight! link DiagnosticInfo NightflyBlue
    highlight! link DiagnosticHint NightflyWhite
    if g:nightflyUndercurls
        exec 'highlight DiagnosticUnderlineError guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight DiagnosticUnderlineWarn guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight DiagnosticUnderlineInfo guibg=NONE gui=undercurl guisp=' . s:blue
        exec 'highlight DiagnosticUnderlineHint guibg=NONE gui=undercurl guisp=' . s:white
    else
        exec 'highlight DiagnosticUnderlineError guibg=NONE gui=underline guisp=' . s:red
        exec 'highlight DiagnosticUnderlineWarn guibg=NONE gui=underline guisp=' . s:yellow
        exec 'highlight DiagnosticUnderlineInfo guibg=NONE gui=underline guisp=' . s:blue
        exec 'highlight DiagnosticUnderlineHint guibg=NONE gui=underline guisp=' . s:white
    endif
    highlight! link DiagnosticVirtualTextError NightflySteelBlue
    highlight! link DiagnosticVirtualTextWarn NightflySteelBlue
    highlight! link DiagnosticVirtualTextInfo NightflySteelBlue
    highlight! link DiagnosticVirtualTextHint NightflySteelBlue
    highlight! link DiagnosticSignError NightflyRedAlert
    highlight! link DiagnosticSignWarn NightflyYellowAlert
    highlight! link DiagnosticSignInfo NightflyBlueAlert
    highlight! link DiagnosticSignHint NightflyWhiteAlert
    highlight! link DiagnosticFloatingError NightflyRed
    highlight! link DiagnosticFloatingWarn NightflyYellow
    highlight! link DiagnosticFloatingInfo NightflyBlue
    highlight! link DiagnosticFloatingHint NightflyWhite
    highlight! link LspSignatureActiveParameter NightflyVisual
elseif has('nvim-0.5')
    " Neovim 0.5 LSP diagnostics
    if g:nightflyUndercurls
        exec 'highlight LspDiagnosticsUnderlineError guibg=NONE gui=undercurl guisp=' . s:red
        exec 'highlight LspDiagnosticsUnderlineWarning guibg=NONE gui=undercurl guisp=' . s:yellow
        exec 'highlight LspDiagnosticsUnderlineInformation guibg=NONE gui=undercurl guisp=' . s:blue
        exec 'highlight LspDiagnosticsUnderlineHint guibg=NONE gui=undercurl guisp=' . s:white
    else
        exec 'highlight LspDiagnosticsUnderlineError guibg=NONE gui=underline guisp=' . s:red
        exec 'highlight LspDiagnosticsUnderlineWarning guibg=NONE gui=underline guisp=' . s:yellow
        exec 'highlight LspDiagnosticsUnderlineInformation guibg=NONE gui=underline guisp=' . s:blue
        exec 'highlight LspDiagnosticsUnderlineHint guibg=NONE gui=underline guisp=' . s:white
    endif
    highlight! link LspDiagnosticsVirtualTextError NightflySteelBlue
    highlight! link LspDiagnosticsVirtualTextWarning NightflySteelBlue
    highlight! link LspDiagnosticsVirtualTextInformation NightflySteelBlue
    highlight! link LspDiagnosticsVirtualTextHint NightflySteelBlue
    highlight! link LspDiagnosticsSignError NightflyRedAlert
    highlight! link LspDiagnosticsSignWarning NightflyYellowAlert
    highlight! link LspDiagnosticsSignInformation NightflyBlueAlert
    highlight! link LspDiagnosticsSignHint NightflyWhiteAlert
    highlight! link LspDiagnosticsFloatingError NightflyRed
    highlight! link LspDiagnosticsFloatingWarning NightflyYellow
    highlight! link LspDiagnosticsFloatingInformation NightflyBlue
    highlight! link LspDiagnosticsFloatingHint NightflyWhite
    highlight! link LspSignatureActiveParameter NightflyVisual
endif

" Neovim only plugins
if has('nvim')
    " NvimTree plugin
    highlight! link NvimTreeFolderIcon NightflyBlue
    highlight! link NvimTreeFolderName NightflyBlue
    highlight! link NvimTreeIndentMarker NightflySlateBlue
    highlight! link NvimTreeOpenedFolderName NightflyBlue
    highlight! link NvimTreeRootFolder NightflyPurple
    highlight! link NvimTreeSpecialFile NightflyYellow
    highlight! link NvimTreeWindowPicker DiffChange
    exec 'highlight NvimTreeExecFile guifg=' . s:green . ' gui=none'
    exec 'highlight NvimTreeImageFile guifg=' . s:violet . ' gui=none'
    exec 'highlight NvimTreeOpenedFile guifg=' . s:yellow . ' gui=none'
    exec 'highlight NvimTreeSymlink guifg=' . s:turquoise . ' gui=none'

    " Telescope plugin
    highlight! link TelescopeBorder NightflySlateBlue
    highlight! link TelescopeMatching NightflyOrange
    highlight! link TelescopeMultiSelection NightflyWatermelon
    highlight! link TelescopeNormal NightflyAshBlue
    highlight! link TelescopePreviewDate NightflyGreyBlue
    highlight! link TelescopePreviewGroup NightflyGreyBlue
    highlight! link TelescopePreviewLink NightflyTurquoise
    highlight! link TelescopePreviewMatch NightflyVisual
    highlight! link TelescopePreviewRead NightflyOrange
    highlight! link TelescopePreviewSize NightflyEmerald
    highlight! link TelescopePreviewUser NightflyGreyBlue
    highlight! link TelescopePromptPrefix NightflyBlue
    highlight! link TelescopeResultsDiffAdd NightflyGreen
    highlight! link TelescopeResultsDiffChange NightflyRed
    highlight! link TelescopeResultsSpecialComment NightflySteelBlue
    highlight! link TelescopeSelectionCaret NightflyWatermelon
    highlight! link TelescopeTitle NightflySteelBlue
    exec 'highlight TelescopeSelection guibg=' . s:regal_blue . ' guifg=' . s:white_blue

    " gitsigns.nvim plugin
    highlight! link GitSignsAdd NightflyEmeraldAlert
    highlight! link GitSignsChange NightflyYellowAlert
    highlight! link GitSignsChangeNr NightflyYellowAlert
    highlight! link GitSignsChangeLn NightflyYellowAlert
    highlight! link GitSignsChangeDelete NightflyOrangeAlert
    highlight! link GitSignsDelete NightflyRedAlert

    " Hop plugin
    highlight! link HopNextKey NightflyYellow
    highlight! link HopNextKey1 NightflyBlue
    highlight! link HopNextKey2 NightflyWatermelon
    highlight! link HopUnmatched NightflyGreyBlue

    " Barbar plugin
    exec 'highlight BufferCurrent      guibg=' . s:dark_blue . '  guifg=' . s:white
    exec 'highlight BufferCurrentIndex guibg=' . s:dark_blue . '  guifg=' . s:white
    exec 'highlight BufferCurrentMod   guibg=' . s:dark_blue . '  guifg=' . s:tan
    exec 'highlight BufferCurrentSign  guibg=' . s:dark_blue . '  guifg=' . s:blue
    exec 'highlight BufferVisible      guibg=' . s:dark_blue . '  guifg=' . s:grey_blue
    exec 'highlight BufferVisibleIndex guibg=' . s:dark_blue . '  guifg=' . s:grey_blue
    exec 'highlight BufferVisibleMod   guibg=' . s:dark_blue . '  guifg=' . s:tan
    exec 'highlight BufferVisibleSign  guibg=' . s:dark_blue . '  guifg=' . s:grey_blue
    exec 'highlight BufferInactive     guibg=' . s:slate_blue . ' guifg=' . s:grey_blue
    exec 'highlight BufferInactiveMod  guibg=' . s:slate_blue . ' guifg=' . s:tan
    exec 'highlight BufferInactiveSign guibg=' . s:slate_blue . ' guifg=' . s:cadet_blue

    " nvim-cmp plugin
    highlight! link CmpItemAbbrMatch NightflyWhiteBlue
    highlight! link CmpItemAbbrMatchFuzzy NightflyOrange
    highlight! link CmpItemKindDefault NightflyWhite
    highlight! link CmpItemKindClass NightflyEmerald
    highlight! link CmpItemKindColor NightflyTurquoise
    highlight! link CmpItemKindConstant NightflyPurple
    highlight! link CmpItemKindConstructor NightflyBlue
    highlight! link CmpItemKindEnum NightflyViolet
    highlight! link CmpItemKindEnumMember NightflyTurquoise
    highlight! link CmpItemKindEvent NightflyViolet
    highlight! link CmpItemKindField NightflyTurquoise
    highlight! link CmpItemKindFile NightflyBlue
    highlight! link CmpItemKindFolder NightflyBlue
    highlight! link CmpItemKindFunction NightflyBlue
    highlight! link CmpItemKindInterface NightflyEmerald
    highlight! link CmpItemKindKeyword NightflyViolet
    highlight! link CmpItemKindMethod NightflyBlue
    highlight! link CmpItemKindModule NightflyEmerald
    highlight! link CmpItemKindOperator NightflyViolet
    highlight! link CmpItemKindProperty NightflyTurquoise
    highlight! link CmpItemKindReference NightflyTurquoise
    highlight! link CmpItemKindStruct NightflyEmerald
    highlight! link CmpItemKindTypeParameter NightflyEmerald
    highlight! link CmpItemKindUnit NightflyTurquoise
    highlight! link CmpItemKindValue NightflyTurquoise
    highlight! link CmpItemKindVariable NightflyTurquoise
    highlight! link CmpItemMenu NightflyCadetBlue

    " My Modifications plugin
    highlight! link typescriptTSInclude NightflyViolet
    highlight! link TSInclude NightflyViolet
    highlight! link TSOperator NightflyViolet
    " highlight! link tsxTSType NightflyYellow
    " highlight! link tsxTSTypeBuiltin NightflyYellow

endif

if g:nightflyItalics
    exec 'highlight TSInclude guifg=' . s:violet . ' gui=italic'
    exec 'highlight typescriptTSInclude guifg=' . s:violet . ' gui=italic'
    exec 'highlight TSType guifg=' . s:peach . ' gui=italic'
    exec 'highlight TSConstant guifg=' . s:blue . ' gui=italic'
    exec 'highlight TSKeyword guifg=' . s:violet . ' gui=italic'
else
    exec 'highlight TSInclude guifg=' . s:violet
    exec 'highlight typescriptTSInclude guifg=' . s:violet
    exec 'highlight TSType guifg=' . s:peach
    exec 'highlight TSContant guifg=' . s:peach
    exec 'highlight TSKeyword guifg=' . s:violet
endif

set background=dark
