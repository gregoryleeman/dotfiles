hi clear
if exists("syntax_on")
 syntax reset
endif

let g:colors_name = "solarized"
let g:solarized_termcolors = 16

" colors {{{
let g:base02  = "0"
let g:red     = "1"
let g:green   = "2"
let g:yellow  = "3"
let g:blue    = "4"
let g:magenta = "5"
let g:cyan    = "6"
let g:base2   = "7"

let g:base03  = "8"
let g:orange  = "9"
let g:base01  = "10"
let g:base00  = "11"
let g:base0   = "12"
let g:violet  = "13"
let g:base1   = "14"
let g:base3   = "15"

let g:base02  = "0"
let g:red     = "1"
let g:green   = "2"
let g:yellow  = "3"
let g:blue    = "4"
let g:magenta = "5"
let g:cyan    = "6"
let g:base2   = "7"

let g:base03  = "8"
let g:orange  = "9"
let g:base01  = "10"
let g:base00  = "11"
let g:base0   = "12"
let g:violet  = "13"
let g:base1   = "14"
let g:base3   = "15"


" }}}
" reference highlighting {{{
exe "hi!  base01    cterm=NONE       ctermfg=".g:base01."   ctermbg=NONE"
exe "hi!  base02    cterm=NONE       ctermfg=".g:base02."   ctermbg=NONE"
exe "hi!  base03    cterm=NONE       ctermfg=".g:base03."   ctermbg=NONE"
exe "hi!  base0     cterm=NONE       ctermfg=".g:base0."    ctermbg=NONE"
exe "hi!  base1     cterm=NONE       ctermfg=".g:base1."    ctermbg=NONE"
exe "hi!  base2     cterm=NONE       ctermfg=".g:base2."    ctermbg=NONE"
exe "hi!  base3     cterm=NONE       ctermfg=".g:base3."    ctermbg=NONE"
exe "hi!  blue      cterm=NONE       ctermfg=".g:blue."     ctermbg=NONE"
exe "hi!  green     cterm=NONE       ctermfg=".g:green."    ctermbg=NONE"
exe "hi!  violet    cterm=NONE       ctermfg=".g:violet."   ctermbg=NONE"
exe "hi!  magenta   cterm=NONE       ctermfg=".g:magenta."  ctermbg=NONE"
exe "hi!  green     cterm=NONE       ctermfg=".g:green."    ctermbg=NONE"
exe "hi!  orange    cterm=NONE       ctermfg=".g:orange."   ctermbg=NONE"
exe "hi!  yellow    cterm=NONE       ctermfg=".g:yellow."   ctermbg=NONE"
exe "hi!  red       cterm=NONE       ctermfg=".g:red."      ctermbg=NONE"
exe "hi!  cyan      cterm=NONE       ctermfg=".g:cyan."     ctermbg=NONE"

exe "hi!  base01u   cterm=underline  ctermfg=".g:base01."   ctermbg=NONE"
exe "hi!  base02u   cterm=underline  ctermfg=".g:base02."   ctermbg=NONE"
exe "hi!  base03u   cterm=underline  ctermfg=".g:base03."   ctermbg=NONE"
exe "hi!  base0u    cterm=underline  ctermfg=".g:base0."    ctermbg=NONE"
exe "hi!  base1u    cterm=underline  ctermfg=".g:base1."    ctermbg=NONE"
exe "hi!  base2u    cterm=underline  ctermfg=".g:base2."    ctermbg=NONE"
exe "hi!  base3u    cterm=underline  ctermfg=".g:base3."    ctermbg=NONE"
exe "hi!  blueu     cterm=underline  ctermfg=".g:blue."     ctermbg=NONE"
exe "hi!  greenu    cterm=underline  ctermfg=".g:green."    ctermbg=NONE"
exe "hi!  violetu   cterm=underline  ctermfg=".g:violet."   ctermbg=NONE"
exe "hi!  magentau  cterm=underline  ctermfg=".g:magenta."  ctermbg=NONE"
exe "hi!  greenu    cterm=underline  ctermfg=".g:green."    ctermbg=NONE"
exe "hi!  orangeu   cterm=underline  ctermfg=".g:orange."   ctermbg=NONE"
exe "hi!  yellowu   cterm=underline  ctermfg=".g:yellow."   ctermbg=NONE"
exe "hi!  redu      cterm=underline  ctermfg=".g:red."      ctermbg=NONE"
exe "hi!  cyanu     cterm=underline  ctermfg=".g:cyan."     ctermbg=NONE"

exe "hi!  base01bg  cterm=NONE       ctermfg=".g:base03."	ctermbg=".g:base01
exe "hi!  base02bg  cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:base02
exe "hi!  base03bg  cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:base03
exe "hi!  base0bg   cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:base0
exe "hi!  base1bg   cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:base1
exe "hi!  base2bg   cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:base2
exe "hi!  base3bg   cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:base3
exe "hi!  bluebg    cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:blue
exe "hi!  greenbg   cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:green
exe "hi!  violetbg  cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:violet
exe "hi!  magentabg cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:magenta
exe "hi!  greenbg   cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:green
exe "hi!  orangebg  cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:orange
exe "hi!  yellowbg  cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:yellow
exe "hi!  redbg     cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:red
exe "hi!  cyanbg    cterm=NONE       ctermfg=".g:base03."   ctermbg=".g:cyan


" }}}
" highlighting {{{
exe "hi IndentGuidesOdd cterm=NONE ctermbg=".g:base03." "
exe "hi IndentGuidesEven cterm=NONE ctermbg=".g:base02." "
exe "hi! Normal cterm=NONE ctermfg=".g:base0." ctermbg=".g:base03." "
exe "hi! ColorColumn cterm=NONE ctermfg=NONE ctermbg=".g:base02." "
exe "hi! Comment cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! ConId cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! Conceal cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! Constant cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! Cursor cterm=NONE ctermfg=".g:base03." ctermbg=".g:base0." "
exe "hi! CursorColumn cterm=NONE ctermfg=NONE ctermbg=".g:base02." "
exe "hi! CursorLine cterm=NONE ctermfg=NONE ctermbg=".g:base02." "
exe "hi! CursorLineNr cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! DiffAdd cterm=NONE ctermfg=".g:green." ctermbg=".g:base02." "
exe "hi! DiffChange cterm=NONE ctermfg=".g:yellow." ctermbg=".g:base02." "
exe "hi! DiffDelete cterm=NONE ctermfg=".g:red." ctermbg=".g:base02." "
exe "hi! DiffText cterm=NONE ctermfg=".g:blue." ctermbg=".g:base02." "
exe "hi! Directory cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! Error cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! ErrorMsg cterm=reverse ctermfg=".g:red." ctermbg=NONE "
exe "hi! FoldColumn cterm=bold ctermfg=".g:base1." ctermbg=".g:base02." "
exe "hi! Folded cterm=NONE ctermfg=".g:base1." ctermbg=NONE"
exe "hi! Identifier cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! Ignore cterm=NONE ctermfg=NONE ctermbg=NONE "
exe "hi! IncSearch cterm=bold,reverse ctermfg=".g:orange." ctermbg=NONE "
exe "hi! LineNr cterm=NONE ctermfg=".g:base01." ctermbg=".g:base02." "
exe "hi! MatchParen cterm=bold ctermfg=".g:base2." ctermbg=".g:magenta." "
exe "hi! ModeMsg cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! MoreMsg cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! NonText cterm=bold ctermfg=".g:base00." ctermbg=NONE "
exe "hi! Pmenu cterm=reverse ctermfg=".g:base0." ctermbg=".g:base02." "
exe "hi! PmenuSbar cterm=reverse ctermfg=".g:base2." ctermbg=".g:base0." "
exe "hi! PmenuSel cterm=reverse ctermfg=".g:base01." ctermbg=".g:base2." "
exe "hi! PmenuThumb cterm=reverse ctermfg=".g:base0." ctermbg=".g:base03." "
exe "hi! PreProc cterm=NONE ctermfg=".g:orange." ctermbg=NONE "
exe "hi! Question cterm=bold ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! QuickFixLine cterm=NONE ctermfg=NONE ctermbg=".g:base02." "
exe "hi! Search cterm=reverse ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! SignColumn cterm=NONE ctermfg=".g:base0." ctermbg=".g:base02." "
exe "hi! Special cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! SpecialKey cterm=bold ctermfg=".g:base00." ctermbg=".g:base02." "
exe "hi! SpellBad cterm=underline ctermfg=NONE ctermbg=NONE "
exe "hi! SpellCap cterm=underline ctermfg=NONE ctermbg=NONE "
exe "hi! SpellLocal cterm=underline ctermfg=NONE ctermbg=NONE "
exe "hi! SpellRare cterm=underline ctermfg=NONE ctermbg=NONE "
exe "hi! Statement cterm=NONE ctermfg=".g:green." ctermbg=NONE "
exe "hi! StatusLine cterm=reverse ctermfg=".g:base1." ctermbg=".g:base03." "
exe "hi! StatusLineNC cterm=reverse ctermfg=".g:base00." ctermbg=".g:base02." "
exe "hi! TabLine cterm=underline ctermfg=".g:base0." ctermbg=".g:base02." "
exe "hi! TabLineFill cterm=underline ctermfg=".g:base0." ctermbg=".g:base02." "
exe "hi! TabLineSel cterm=underline,reverse ctermfg=".g:base01." ctermbg=".g:base2." "
exe "hi! Title cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! Todo cterm=bold ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! Type cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! Underlined cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! VarId cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! VertSplit cterm=NONE ctermfg=".g:base00." ctermbg=".g:base00." "
exe "hi! Visual cterm=reverse ctermfg=".g:base01." ctermbg=".g:base03." "
exe "hi! VisualNOS cterm=reverse ctermfg=NONE ctermbg=".g:base02." "
exe "hi! WarningMsg cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! WildMenu cterm=reverse ctermfg=".g:base2." ctermbg=".g:base02." "
exe "hi! cPreCondit cterm=NONE ctermfg=".g:orange." ctermbg=NONE "
exe "hi! gitcommitBranch cterm=bold ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! gitcommitComment cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! gitcommitDiscardedFile cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! gitcommitDiscardedType cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! gitcommitFile cterm=bold ctermfg=".g:base0." ctermbg=NONE "
exe "hi! gitcommitHeader cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! gitcommitOnBranch cterm=bold ctermfg=".g:base01." ctermbg=NONE "
exe "hi! gitcommitSelectedFile cterm=bold ctermfg=".g:green." ctermbg=NONE "
exe "hi! gitcommitSelectedType cterm=NONE ctermfg=".g:green." ctermbg=NONE "
exe "hi! gitcommitUnmerged cterm=bold ctermfg=".g:green." ctermbg=NONE "
exe "hi! gitcommitUnmergedFile cterm=bold ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! gitcommitUntrackedFile cterm=bold ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! helpExample cterm=NONE ctermfg=".g:base1." ctermbg=NONE "
exe "hi! helpHyperTextEntry cterm=NONE ctermfg=".g:green." ctermbg=NONE "
exe "hi! helpHyperTextJump cterm=underline ctermfg=".g:blue." ctermbg=NONE "
exe "hi! helpNote cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! helpOption cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! helpVim cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! hsImport cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! hsImportLabel cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! hsModuleName cterm=underline ctermfg=".g:green." ctermbg=NONE "
exe "hi! hsModuleStartLabel cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! hsNiceOperator cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! hsStatement cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! hsString cterm=NONE ctermfg=".g:base00." ctermbg=NONE "
exe "hi! hsStructure cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! hsType cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! hsTypedef cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! hsVarSym cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! hs_DeclareFunction cterm=NONE ctermfg=".g:orange." ctermbg=NONE "
exe "hi! hs_OpFunctionName cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! hs_hlFunctionName cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! htmlArg cterm=NONE ctermfg=".g:base00." ctermbg=NONE "
exe "hi! htmlEndTag cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! htmlSpecialTagName cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! htmlTag cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! htmlTagN cterm=bold ctermfg=".g:base1." ctermbg=NONE "
exe "hi! htmlTagName cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! javaScript cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! pandocBlockQuote cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocBlockQuoteLeader1 cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocBlockQuoteLeader2 cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! pandocBlockQuoteLeader cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! pandocBlockQuoteLeader4 cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocBlockQuoteLeader5 cterm=NONE ctermfg=".g:base0." ctermbg=NONE "
exe "hi! pandocBlockQuoteLeader6 cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocCitation cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! pandocCitationDelim cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! pandocCitationID cterm=underline ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! pandocCitationRef cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! pandocComment cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocDefinitionBlock cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocDefinitionIndctr cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocDefinitionTerm cterm=bold,reverse ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocEmphasis cterm=NONE ctermfg=".g:base0." ctermbg=NONE "
exe "hi! pandocEmphasisDefinition cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocEmphasisHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocEmphasisNested cterm=bold ctermfg=".g:base0." ctermbg=NONE "
exe "hi! pandocEmphasisNestedDefinition cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocEmphasisNestedHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocEmphasisNestedTable cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocEmphasisTable cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocEscapePair cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocFootnote cterm=NONE ctermfg=".g:green." ctermbg=NONE "
exe "hi! pandocFootnoteDefLink cterm=bold ctermfg=".g:green." ctermbg=NONE "
exe "hi! pandocFootnoteInline cterm=bold,underline ctermfg=".g:green." ctermbg=NONE "
exe "hi! pandocFootnoteLink cterm=underline ctermfg=".g:green." ctermbg=NONE "
exe "hi! pandocHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocHeadingMarker cterm=bold ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! pandocImageCaption cterm=bold,underline ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocLinkDefinition cterm=underline ctermfg=".g:cyan." ctermbg=NONE "
exe "hi! pandocLinkDefinitionID cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocLinkDelim cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocLinkLabel cterm=underline ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocLinkText cterm=bold,underline ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocLinkTitle cterm=underline ctermfg=".g:base00." ctermbg=NONE "
exe "hi! pandocLinkTitleDelim cterm=underline ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocLinkURL cterm=underline ctermfg=".g:base00." ctermbg=NONE "
exe "hi! pandocListMarker cterm=NONE ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! pandocListReference cterm=underline ctermfg=".g:magenta." ctermbg=NONE "
exe "hi! pandocMetadata cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocMetadataDelim cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocMetadataKey cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocNonBreakingSpace cterm=reverse ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocRule cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocRuleLine cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocStrikeout cterm=reverse ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocStrikeoutDefinition cterm=reverse ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocStrikeoutHeading cterm=reverse ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocStrikeoutTable cterm=reverse ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocStrongEmphasis cterm=bold ctermfg=".g:base0." ctermbg=NONE "
exe "hi! pandocStrongEmphasisDefinition cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocStrongEmphasisEmphasis cterm=bold ctermfg=".g:base0." ctermbg=NONE "
exe "hi! pandocStrongEmphasisEmphasisDefinition cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocStrongEmphasisEmphasisHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocStrongEmphasisEmphasisTable cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocStrongEmphasisHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocStrongEmphasisNested cterm=bold ctermfg=".g:base0." ctermbg=NONE "
exe "hi! pandocStrongEmphasisNestedDefinition cterm=bold ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocStrongEmphasisNestedHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocStrongEmphasisNestedTable cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocStrongEmphasisTable cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocStyleDelim cterm=NONE ctermfg=".g:base01." ctermbg=NONE "
exe "hi! pandocSubscript cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocSubscriptDefinition cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocSubscriptHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocSubscriptTable cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocSuperscript cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocSuperscriptDefinition cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocSuperscriptHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocSuperscriptTable cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocTable cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocTableStructure cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocTableZebraDark cterm=NONE ctermfg=".g:blue." ctermbg=".g:base02." "
exe "hi! pandocTableZebraLight cterm=NONE ctermfg=".g:blue." ctermbg=".g:base03." "
exe "hi! pandocTitleBlock cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocTitleBlockTitle cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocTitleComment cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! pandocVerbatimBlock cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! pandocVerbatimInline cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! pandocVerbatimInlineDefinition cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! pandocVerbatimInlineHeading cterm=bold ctermfg=".g:orange." ctermbg=NONE "
exe "hi! pandocVerbatimInlineTable cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! perlHereDoc cterm=NONE ctermfg=".g:base1." ctermbg=".g:base03." "
exe "hi! perlStatementFileDesc cterm=NONE ctermfg=".g:cyan." ctermbg=".g:base03." "
exe "hi! perlVarPlain cterm=NONE ctermfg=".g:yellow." ctermbg=".g:base03." "
exe "hi! rubyDefine cterm=bold ctermfg=".g:base1." ctermbg=".g:base03." "
exe "hi! texMathMatcher cterm=NONE ctermfg=".g:yellow." ctermbg=".g:base03." "
exe "hi! texMathZoneX cterm=NONE ctermfg=".g:yellow." ctermbg=".g:base03." "
exe "hi! texRefLabel cterm=NONE ctermfg=".g:yellow." ctermbg=".g:base03." "
exe "hi! texStatement cterm=NONE ctermfg=".g:cyan." ctermbg=".g:base03." "
exe "hi! vimCmdSep cterm=bold ctermfg=".g:blue." ctermbg=NONE "
exe "hi! vimCommand cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! vimCommentString cterm=NONE ctermfg=".g:red." ctermbg=NONE "
exe "hi! vimGroup cterm=bold,underline ctermfg=".g:blue." ctermbg=NONE "
exe "hi! vimHiGroup cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! vimHiLink cterm=NONE ctermfg=".g:blue." ctermbg=NONE "
exe "hi! vimIsCommand cterm=NONE ctermfg=".g:base00." ctermbg=NONE "
exe "hi! vimSynMtchOpt cterm=NONE ctermfg=".g:yellow." ctermbg=NONE "
exe "hi! vimSynType cterm=NONE ctermfg=".g:cyan." ctermbg=NONE "

" }}}
" link {{{
hi! link diffAdded Statement
hi! link diffLine Identifier
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitNoBranch gitcommitBranch
hi! link gitcommitSelected gitcommitComment
hi! link gitcommitSelectedArrow gitcommitSelectedFile
hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
hi! link gitcommitUntracked gitcommitComment
hi! link helpSpecial Special
hi! link hsDelimTypeExport Delimiter
hi! link hsImportParams Delimiter
hi! link hsModuleStartLabel hsStructure
hi! link hsModuleWhereLabel hsModuleStartLabel
hi! link lCursor Cursor
hi! link pandocCodeBlock pandocVerbatimBlock
hi! link pandocCodeBlockDelim pandocVerbatimBlock
hi! link pandocEscapedCharacter pandocEscapePair
hi! link pandocLineBreak pandocEscapePair
hi! link pandocMetadataTitle pandocMetadata
hi! link pandocTableStructureEnd pandocTableStructure
hi! link pandocTableStructureTop pandocTableStructure
hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link vimFunc Function
hi! link vimSet Normal
hi! link vimSetEqual Normal
hi! link vimUserFunc Function
hi! link vimVar Identifier

" }}}
