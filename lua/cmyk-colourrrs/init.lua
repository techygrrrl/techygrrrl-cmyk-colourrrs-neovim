local colors = require("cmyk-colourrrs.colors")

-- TODO: Refactor highlights to their own file

local pallette = {
	Normal = { fg = colors.fg, bg = colors.bg },
	ModeMsg = { link = "Normal" },
	typescriptGlobal = { link = "Normal" },
	StatusLine = { fg = colors.fg, bg = colors.cmyk_black },
	typescriptObjectType = { link = "Normal" },
	typescriptPredefinedType = { link = "Normal" },
	Boolean = { fg = colors.hot_pink },
	Builtin = { fg = colors.fg },
	CMYKBraces = { fg = colors.highlighterrr_yellow },
	CMYKClassName = { fg = colors.cerrrulean },
	CMYKIdName = { fg = colors.grrreen },
	CMYKPseudoClass = { fg = colors.grrreen },
	CMYKPseudoElement = { fg = colors.grrreen },
	CMYKSingleQuote = { fg = colors.highlighterrr_yellow },
	CMYKBackstick = { link = "CMYKSingleQuote" },
	CMYKDoubleQuote = { link = "CMYKSingleQuote" },
	CMYKUnit = { fg = colors.hot_pink },
	CMYKVar = { fg = colors.fg },
	Character = { fg = colors.lavendrrr },
	Comment = { fg = colors.light_400, italic = true },
	jsonCommentError = { link = "Comment" },
	Conditional = { fg = colors.hot_pink },
	Constant = { fg = colors.fg },
	Constructor = { fg = colors.cerrrulean },
	Cursor = { fg = colors.bg, bg = colors.fg },
	CursorLine = { bg = colors.dark_200 },
	CursorColumn = { link = "CursorLine" },
	CursorLineNr = { fg = colors.hot_pink, bg = colors.cmyk_black },
	DiagnosticError = { fg = colors.hot_pink, bg = colors.cmyk_black },
	DiagnosticHint = { fg = colors.cerrrulean, bg = colors.cmyk_black },
	DiagnosticInfo = { fg = colors.grrreen_1, bg = colors.cmyk_black },
	DiagnosticUnderlineError = { sp = colors.hot_pink, undercurl = true },
	DiagnosticUnderlineHint = { sp = colors.cerrrulean, undercurl = true },
	DiagnosticUnderlineInfo = { sp = colors.grrreen_1, undercurl = true },
	DiagnosticUnderlineWarn = { sp = colors.tangerrrine, undercurl = true },
	DiagnosticVirtualTextError = { fg = colors.hot_pink, bold = true },
	DiagnosticVirtualTextHint = { fg = colors.cerrrulean },
	DiagnosticVirtualTextInfo = { fg = colors.grrreen_1 },
	DiagnosticVirtualTextWarn = { fg = colors.tangerrrine },
	DiagnosticWarn = { fg = colors.tangerrrine, bg = colors.cmyk_black },
	DiffAdd = { fg = colors.grrreen, bg = colors.grrreen },
	GitGutterAdd = { link = "DiffAdd" },
	DiffChange = { fg = colors.tangerrrine, bg = colors.tangerrrine },
	GitGutterChange = { link = "DiffChange" },
	DiffDelete = { fg = colors.electric_crrrimson, bg = colors.electric_crrrimson },
	GitGutterDelete = { link = "DiffDelete" },
	DiffText = { fg = colors.tangerrrine, bg = colors.tangerrrine },
	Directory = { fg = colors.lavendrrr },
	EndOfBuffer = { fg = colors.bg },
	Error = { fg = colors.hot_pink },
	ErrorMsg = { fg = colors.hot_pink },
	Exception = { fg = colors.hot_pink },
	Field = { fg = colors.fg },
	Float = { fg = colors.tangerrrine },
	FloatBorder = { fg = colors.purrrple, bg = colors.bg },
	Function = { fg = colors.grrreen },
	cssAttributeSelector = { link = "Function" },
	sassMixinName = { link = "Function" },
	typescriptFuncCall = { link = "Function" },
	typescriptIdentifierName = { link = "Function" },
	typescriptMember = { link = "Function" },
	Identifier = { fg = colors.hot_pink },
	CMYKExport = { link = "Identifier" },
	cssMultiColumnAttr = { link = "Identifier" },
	cssUnitDecorators = { link = "Identifier" },
	typescriptDefault = { link = "Identifier" },
	typescriptExport = { link = "Identifier" },
	typescriptImport = { link = "Identifier" },
	IncSearch = { fg = colors.fg, bg = colors.dark_500, bold = true },
	Include = { fg = colors.hot_pink },
	sassInclude = { link = "Include" },
	IndentBlankLineChar = { fg = colors.dark_500 },
	IndentBlankLineContextChar = { fg = colors.cerrrulean },
	Keyword = { fg = colors.cerrrulean },
	cssClassName = { link = "Keyword" },
	typescriptAliasDeclaration = { link = "Keyword" },
	typescriptClassName = { link = "Keyword" },
	typescriptEnum = { link = "Keyword" },
	typescriptEnumKeyword = { link = "Keyword" },
	typescriptInterfaceName = { link = "Keyword" },
	typescriptTypeReference = { link = "Keyword" },
	typescriptVariable = { link = "Keyword" },
	KeywordOperator = { fg = colors.lavendrrr },
	KeywordReturn = { fg = colors.hot_pink },
	LineNr = { fg = colors.fg, bg = colors.cmyk_black },
	Macro = { fg = colors.hot_pink },
	MatchParen = { fg = colors.light_200, bg = colors.dark_500 },
	Menu = { fg = colors.fg, bg = colors.bg },
	Method = { fg = colors.grrreen },
	MsgArea = { fg = colors.fg, bg = colors.cmyk_black },
	NormalNC = { link = "Normal" },
	Number = { fg = colors.tangerrrine },
	Operator = { fg = colors.lavendrrr },
	Parameter = { fg = colors.fg },
	Pmenu = { fg = colors.fg, bg = colors.dark_300 },
	PmenuSBar = { bg = colors.dark_500 },
	PmenuSel = { fg = colors.hot_pink, bg = colors.dark_400 },
	PmenuThumb = { bg = colors.dark_400 },
	Prepoc = { fg = colors.hot_pink },
	Repeat = { fg = colors.hot_pink },
	Search = { fg = colors.fg, bg = colors.dark_500, bold = true },
	SignColumn = { bg = colors.cmyk_black },
	SignColumnSB = { bg = colors.cmyk_black },
	Statement = { fg = colors.hot_pink },
	String = { fg = colors.lavendrrr },
	cssSelectorOp = { link = "String" },
	cssSelectorOp2 = { link = "String" },
	jsonString = { link = "String" },
	typescriptString = { link = "String" },
	typescriptTemplate = { link = "String" },
	StringRegex = { fg = colors.hot_pink },
	TSAttribute = { fg = colors.highlighterrr_yellow },
	TSCharacter = { fg = colors.lavendrrr },
	TSComment = { link = "Comment" },
	TSConditional = { fg = colors.hot_pink },
	TSConstBuiltin = { fg = colors.hot_pink },
	TSConstMacro = { fg = colors.hot_pink },
	TSConstant = { fg = colors.fg },
	TSConstructor = { fg = colors.cerrrulean },
	TSEmphasis = { fg = colors.fg, italic = true },
	TSError = { fg = colors.hot_pink },
	TSException = { fg = colors.hot_pink },
	TSField = { fg = colors.fg },
	TSFloat = { fg = colors.tangerrrine },
	TSFuncBuiltin = { fg = colors.fg },
	TSFuncMacro = { fg = colors.grrreen },
	TSFunction = { fg = colors.grrreen },
	TSInclude = { fg = colors.hot_pink },
	TSKeyword = { fg = colors.cerrrulean },
	TSKeywordFunction = { fg = colors.cerrrulean },
	TSKeywordOperator = { fg = colors.lavendrrr },
	TSKeywordReturn = { fg = colors.hot_pink },
	TSLabel = { fg = colors.purrrple },
	TSLiteral = { fg = colors.fg },
	TSMethod = { fg = colors.grrreen },
	TSNamespace = { fg = colors.hot_pink },
	TSNumber = { fg = colors.tangerrrine },
	TSOperator = { fg = colors.lavendrrr },
	TSParameter = { fg = colors.fg },
	TSParameterReference = { fg = colors.fg },
	TSProperty = { fg = colors.fg },
	TSPunctBracket = { fg = colors.highlighterrr_yellow },
	TSPunctDelimiter = { fg = colors.highlighterrr_yellow },
	sassClassChar = { link = "TSPunctDelimiter" },
	TSPunctSpecial = { fg = colors.highlighterrr_yellow },
	TSRepeat = { fg = colors.hot_pink },
	TSString = { fg = colors.lavendrrr },
	TSStringEscape = { fg = colors.hot_pink },
	TSStringRegex = { fg = colors.hot_pink },
	TSStrong = { fg = colors.grrreen, bold = true },
	TSTag = { fg = colors.hot_pink },
	TSTagAttribute = { fg = colors.grrreen },
	TSTagDelimiter = { fg = colors.highlighterrr_yellow },
	TSText = { fg = colors.fg },
	TSTextReference = { fg = colors.grrreen },
	TSTextStrong = { fg = colors.grrreen, bold = true },
	TSTitle = { fg = colors.cerrrulean, bold = true },
	TSType = { fg = colors.cerrrulean },
	TSTypeBuiltin = { fg = colors.fg },
	TSURI = { fg = colors.hot_pink, underline = true },
	TSVariable = { fg = colors.fg },
	TSVariableBuiltin = { fg = colors.fg },
	TabLine = { fg = colors.fg, bg = colors.cmyk_black },
	TabLineFill = { fg = colors.fg, bg = colors.cmyk_black },
	TabLineSell = { fg = colors.fg, bg = colors.cmyk_black, bold = true, italic = true },
	Title = { fg = colors.cerrrulean, bold = true },
	Todo = { fg = colors.fg, bg = colors.hot_pink, bold = true },
	TSTodo = { link = "Todo" },
	Type = { fg = colors.cerrrulean },
	sassClass = { link = "Type" },
	TypeBuiltin = { fg = colors.fg },
	Variable = { fg = colors.fg },
	typescriptVariableDeclaration = { link = "Variable" },
	Visual = { bg = colors.dark_300 },
	Warn = { fg = colors.tangerrrine },
	WarningMsg = { fg = colors.tangerrrine },
	WinSeparator = { fg = colors.hot_pink },
	cssAttrComma = { fg = colors.highlighterrr_yellow },
	cssCustomProp = { fg = colors.fg },
	cssDefinition = { fg = colors.fg },
	cssBoxProp = { link = "cssDefinition" },
	cssFlexibleBoxProp = { link = "cssDefinition" },
	cssFontProp = { link = "cssDefinition" },
	cssMediaProp = { link = "cssDefinition" },
	cssPageProp = { link = "cssDefinition" },
	cssPositioningProp = { link = "cssDefinition" },
	cssTransitionProp = { link = "cssDefinition" },
	cssFlexibleBoxAttr = { fg = colors.hot_pink },
	cssNoise = { fg = colors.highlighterrr_yellow },
	cssBraces = { link = "cssNoise" },
	cssClassNameDot = { link = "cssNoise" },
	cssPseudoClassId = { fg = colors.grrreen },
	cssTSKeyword = { fg = colors.hot_pink },
	cssTSType = { fg = colors.hot_pink },
	jsonFold = { fg = colors.hot_pink },
	jsonKeyword = { fg = colors.grrreen },
	jsonKeywordMatch = { fg = colors.highlighterrr_yellow },
	jsonNoise = { fg = colors.highlighterrr_yellow },
	jsonQuote = { fg = colors.highlighterrr_yellow },
	markdownBold = { fg = colors.fg, bold = true },
	markdownCodeDelimiter = { link = "TSPunctDelimiter" },
	markdownBlockquote = { link = "TSPunctDelimiter" },
	markdownEscape = { fg = colors.fg },
	markdownFootnote = { fg = colors.fg },
	markdownFootnoteDefinition = { fg = colors.fg },
	markdownHeadingDelimiter = { fg = colors.highlighterrr_yellow, bold = true },
	markdownLinkText = { fg = colors.grrreen },
	markdownLinkDelimiter = { link = "TSPunctDelimiter" },
	markdownLinkTextDelimiter = { link = "TSPunctDelimiter" },
	markdownRule = { fg = colors.fg, bold = true },
	markdownTSLiteral = { fg = colors.fg },
	markdownUrl = { fg = colors.hot_pink, underline = true },
	markdown_inlineTSLiteral = { fg = colors.fg },
	sassMixing = { link = "sassInclude" },
	typescriptBinaryOp = { fg = colors.lavendrrr },
	typescriptBraces = { fg = colors.highlighterrr_yellow },
	typescriptEndColons = { link = "typescriptBraces" },
	typescriptParens = { link = "typescriptBraces" },
	typescriptCall = { fg = colors.fg },
	typescriptConstructor = { fg = colors.grrreen },
	typescriptDecorator = { fg = colors.grrreen },
	typescriptExceptions = { fg = colors.hot_pink },
	typescriptForOperator = { fg = colors.lavendrrr },
	typescriptFuncComma = { fg = colors.highlighterrr_yellow },
	typescriptIdentifier = { fg = colors.hot_pink },
	typescriptObjectLabel = { fg = colors.fg },
	typescriptOperator = { fg = colors.lavendrrr },
	typescriptProp = { fg = colors.hot_pink },
	typescriptRegexpString = { fg = colors.hot_pink },
	typescriptSpecial = { fg = colors.hot_pink },
	typescriptTernaryOp = { fg = colors.lavendrrr },
	typescriptTry = { fg = colors.hot_pink },
	NeoTreeGitAdd = { fg = colors.grrreen },
	NeoTreeGitAdded = { link = "NeoTreeGitAdd" },
	NeoTreeGitStaged = { fg = colors.grrreen },
	NeoTreeGitModified = { fg = colors.tangerrrine },
	NeoTreeGitRenamed = { fg = colors.tangerrrine },
	NeoTreeGitDeleted = { fg = colors.electric_crrrimson },
}

vim.cmd([[highlight clear]])
vim.opt.termguicolors = true
vim.g.colors_name = "cmyk-colourrrs"

for group, attrs in pairs(pallette) do
	vim.api.nvim_set_hl(0, group, attrs)
end

local M = {}
M.setup = function()
	local config = vim.tbl_deep_extend("force", {
		enabled_plugins = {
			feline = true,
			bufferline = true,
		},
	}, vim.g["cmyk-colourrrs"] or {})

	require("cmyk-colourrrs.utils").setup_plugins(config)
end

return M
