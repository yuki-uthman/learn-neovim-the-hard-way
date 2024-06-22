-- This file should be edited by the user. Read the instructions of each section and then edit them as desired.

--[[ Highlite, a Neovim colorscheme template.
	* Author:     Iron-E (https://github.com/Iron-E)
	* Repository: https://github.com/nvim-deus

	Initially forked from vim-rnb, a Vim colorsheme template:
	* Author:        Romain Lafourcade (https://github.com/romainl)
	* Canonical URL: https://github.com/romainl/vim-rnb
]]

--[[ Introduction
	This template is designed to help Neovim users create their own colorschemes without much effort.

	You will not need any additional tooling to run this file. Just open it in Neovim and follow the instructions.

	The process is divided in five steps:
	1. Rename the template,
	2. Edit your colorscheme's information,
	3. Define your colors,
	4. Define your highlight groups and links, and
	5. Sourcing your colorscheme.
]]

--[[ Step 1: Renaming
	* If this file is distributed with a colorscheme it's probably already named correctly
	  and you can skip this step.
	* If you forked/cloned/copied this repository to create your own colorscheme, you will have to
	  rename this template to match the name of your colorscheme.

	NOTE: Neovim doesn't really care about whitespace in the name of the colorscheme but it does for
	filenames so make sure your filename doesn't have any whitespace character.

	| colorscheme name  | module name | template filename |
	|:-----------------:|:-----------:|:-----------------:|
	| foobar            | foobar      | foobar.lua        |
	| foo-bar           | foo_bar     | foo_bar.lua       |
	| foo bar           | foo_bar     | foo_bar.lua       |
	| foo_bar           | foo_bar     | foo_bar.lua       |

	Rename the following files:
	* `colors/deus.vim`
	* `lua/deus.lua`

	Where 'deus' is the name of your colorscheme.

	TIP: If you are on a Unix-based system (or have WSL on Windows) you can use the setup script at the root of this repo.
	     See the README for more details.
]]


--[[ Step 2: Information
	In this step you will define information that helps Neovim process:

	1. How users access your colorscheme;
	2. How your colorscheme should be rendered.
]]

-- This is the name of your colorscheme which will be used as per |g:colors_name|.
vim.g.colors_name = 'deus'

--[[ Step 3: Colors
	Next you will define all of the colors that you will use for the color scheme.

	Each one should be made up of three parts:

```lua
	<color name> = { -- Give each color a distinctive name.
		'#<hex color code>', -- Hexadecimal color used in GVim/MacVim or 'NONE'.
		<16-bit color code>, -- Integer 0–255 used by terminals supporting 256 colors or 'NONE'.
		'<ANSI color name>'  -- color name used by less capable color terminals, can be 'darkred',
		                       'red', 'darkgreen', 'green', 'darkyellow', 'yellow', 'darkblue',
		                       'blue', 'darkmagenta', 'magenta', 'black', 'darkgrey', 'grey',
		                       'white', or 'NONE'
	}
```

	If your colors are defined correctly, the resulting colorscheme is guaranteed
	to work in GVim (Windows/Linux), MacVim (MacOS), and any properly set up terminal emulator.

	NOTE: |Replace-mode| will probably be useful here.
]]

vim.cmd([[
	highlight! link @annotation TSAnnotation
	highlight! link @attribute TSAttribute
	highlight! link @boolean TSBoolean
	highlight! link @character TSCharacter
	highlight! link @comment TSComment
	highlight! link @conditional TSConditional
	highlight! link @constant TSConstant
	highlight! link @constant.builtin TSConstBuiltin
	highlight! link @constant.macro TSConstMacro
	highlight! link @constructor TSConstructor
	highlight! link @exception TSException
	highlight! link @field TSField
	highlight! link @float TSFloat
	highlight! link @function TSFunction
	highlight! link @function.builtin TSFuncBuiltin
	highlight! link @function.macro TSFuncMacro
	highlight! link @include TSInclude
	highlight! link @keyword TSKeyword
	highlight! link @keyword.return TSKeywordReturn
	highlight! link @keyword.function TSKeywordFunction
	highlight! link @keyword.operator TSKeywordOperator
	highlight! link @keyword.modifier TSKeywordModifier
	highlight! link @label TSLabel
	highlight! link @method TSMethod
	highlight! link @namespace TSNamespace
	highlight! link @none TSNone
	highlight! link @number TSNumber
	highlight! link @operator TSOperator
	highlight! link @parameter TSParameter
	highlight! link @parameter.reference TSParameterReference
	highlight! link @property TSProperty
	highlight! link @punctuation.bracket TSPunctBracket
	highlight! link @punctuation.delimiter TSPunctDelimiter
	highlight! link @punctuation.special TSPunctSpecial
	highlight! link @repeat TSRepeat
	highlight! link @storageclass TSStorageClass
	highlight! link @storageclass.lifetime TSStorageClassLifetime
	highlight! link @string TSString
	highlight! link @string.escape TSStringEscape
	highlight! link @string.regex TSStringRegex
	highlight! link @structure TSStructure
	highlight! link @symbol TSSymbol
	highlight! link @tag TSTag
	highlight! link @tag.attribute TSAttribute
	highlight! link @tag.delimiter TSTagDelimiter
	highlight! link @text TSText
	highlight! link @strike TSStrike
	highlight! link @math TSMath
	highlight! link @type TSType
	highlight! link @type.builtin TSTypeBuiltin
	highlight! link @type.qualifier TSTypeQualifier
	highlight! link @uri TSURI
	highlight! link @variable TSVariable
	highlight! link @variable.builtin TSVariableBuiltin
	highlight! link @variable.python pythonTSVariable
	highlight! link @decorator.python pythonTSDecorator
	highlight! link @variable.rust rustTSVariable
	highlight! link @conditional.javascript javascriptTSConditional
	highlight! link @variable.javascript javascriptTSVariable
]])

local black          = { '#2C323B', 235, 'black' }
local gray_dark      = { '#3c3836', 237, 'darkgrey' }
local gray_darker    = { '#242a32', 239, 'gray' }
local gray           = { '#928374', 245, 'gray' }
local gray_light     = { '#c0c0c0', 251, 'gray' }
local white          = { '#ffffff', 15, 'white' }

local dsdark0        = { '#2C323B', 235, 'darkgrey' }
local dsdark1        = { '#3c3836', 237, 'darkgrey' }
local dsdark2        = { '#242a32', 239, 'darkgrey' }
local dsdark3        = { '#665c54', 241, 'darkgrey' }
local dsdark4        = { '#7c6f64', 243, 'darkgrey' }
local dsdark4_256    = { '#7c6f64', 243, 'darkgrey' }

local dsColumn       = { '#35312f', 239, 'darkgrey' }

local dslight0       = { '#d2d2d2', 229, 'grey' }
local dslight1       = { '#ebdbb2', 223, 'grey' }
local dslight2       = { '#d5c4a1', 250, 'grey' }
local dslight3       = { '#bdae93', 248, 'grey' }
local dslight4       = { '#a89984', 246, 'grey' }
local dslight4_256   = { '#a89984', 246, 'grey' }

local tan            = { '#f4c069', 180, 'darkyellow' }

local red            = { '#fb4934', 167, 'red' }
local red_dark       = { '#a80000', 124, 'darkred' }
local red_light      = { '#ff4090', 203, 'red' }

local orange         = { '#fe8019', 208, 'darkyellow' }
local orange_light   = { '#f0af00', 214, 'yellow' }

local yellow         = { '#fabd2f', 220, 'yellow' }

local green_dark     = { '#50de60', 83, 'darkgreen' }
local green          = { '#98C379', 142, 'green' }
local green_light    = { '#a0ff70', 72, 'green' }

local blue           = { '#83a598', 109, 'darkblue' }
local cyan           = { '#8ec07c', 108, 'aqua' }
local ice            = { '#49a0f0', 63, 'cyan' }
local teal           = { '#00d0c0', 38, 'cyan' }
local turqoise       = { '#2bff99', 33, 'blue' }

local magenta        = { '#d5508f', 126, 'magenta' }
local magenta_dark   = { '#bb0099', 126, 'darkmagenta' }
local pink           = { '#ffa6ff', 162, 'magenta' }
local pink_light     = { '#ffb7b7', 38, 'white' }
local purple         = { '#C678DD', 175, 'magenta' }
local purple_light   = { '#A8D5E2', 63, 'magenta' }
local magenta_light1 = { '#BD93BD', 63, 'magenta' }
local magenta_light2 = { '#A7A2A9', 63, 'magenta' }
local navyblue       = { '#6699CC', 63, 'blue' }

--[[ Step 4: highlights
	You can define highlight groups like this:

```lua
	<highlight group name> = {
		-- The color for the background, `NONE`, `FG` or `BG`
		bg = <color>,

		-- The color for the foreground, `NONE`, `FG` or `BG`
		fg = <color>

		-- The |highlight-blend| value, if one is desired.
		[, blend = <integer>]

		-- Style can be 'bold', 'italic', and more. See |attr-list| for more information.
		-- It can also have a color, and/or multiple <cterm>s.
		[, style = <cterm>|{<cterm> (, <cterm>) [color=<color>]} ]
	}
```

	You can also link one highlight group to another:

```lua
	<highlight group name> = '<highlight group name>'
```
	____________________________________________________________________________

	Here is an example to define `SpellBad` and then link some new group
	`SpellWorse` to it:

```lua
	SpellBad = { -- ← name of the highlight group
		bg=NONE, -- background color
		fg=red, -- foureground color
		style={ -- the style
			'undercurl', -- undercurl (squiggly line)
			color=red -- the color of the undercurl
		}
	},
	SpellWorse = 'SpellBad'
```

	If you weren't satisfied with undercurl, and also wanted another effect, you can
	add another one below 'undercurl' and it will be applied as well:

```lua
	SpellBad = { -- ← name of the highlight group
		bg=NONE, -- background color
		fg=red, -- foureground color
		style={ -- the style
			'undercurl', -- undercurl (squiggly line)
			'standout'
			color=red -- the color of the undercurl
		}
	}
```
	____________________________________________________________________________

	If you want to create a colorscheme that is responsive to the user's
	'background' setting, you can specify special `light` and `dark` keys to
	define how each group should be highlighted in each case.

```lua
	SpellBad = {
		bg=NONE,
		dark={fg=white},
		light={fg=black},
		style={'undercurl', color=red}
	}
```

	Whenever the user changes their 'background' setting, the settings inside of
	whichever key is relevant will be loaded.
	____________________________________________________________________________

	You can add any custom highlight group to the standard list below but you
	shouldn't remove any if you want a working colorscheme. Most of them are
	described under |highlight-default|, some from |group-name|, and others from
	common syntax groups.  Both help sections are good reads.
	____________________________________________________________________________

	If you want to inherit a specific attribute of another highlight group, you
	can do the following:

```lua
	SpellBad = function(self)
		local inherited_style = self.SpellRare.style
		inherited_style.color = red

		return {
			bg=NONE,
			fg=NONE,
			style=inherited_style
		}
	end
```

	The function will be executed by |deus| and transformed into the
	expected result.
	____________________________________________________________________________

	NOTE: |Replace-mode| will probably be useful here.

	NOTE: /As long as you do not remove any highlight groups or colors/, you can
	      safely ignore any highlight groups that are `link`ed to others.

	      For example, programming languages almost exclusively link to the 1st
	      and 2nd sections, so as long as you define everything there you will
	      automatically be defining the rest of the highlights, which is one of
	      the benefits of using this template.
]]

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = 'bg'
local FG = 'fg'
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal = { bg = black, fg = dslight1 }

-- This is where the rest of your highlights should go.
local highlight_groups = {
	--[[ 4.1. Text Analysis ]]
	Comment     = { fg = gray, style = 'italic' },
	NonText     = { fg = gray_darker },
	EndOfBuffer = 'NonText',
	Whitespace  = 'NonText',

	--[[ 4.1.1. Literals]]
	Constant  = { fg = orange_light },
	String    = { fg = green },
	Character = { fg = purple },
	Number    = { fg = purple },
	Boolean   = { fg = purple },
	Float     = 'Number',

	--[[ 4.1.2. Identifiers]]
	Identifier = { fg = blue },
	Function   = { fg = green, style = 'bold' },

	--[[ 4.1.3. Syntax]]
	Statement   = { fg = red },
	Conditional = { fg = red, style = 'italic' },
	Repeat      = { fg = red },
	Label       = { fg = magenta_light1, style = 'italic' },
	Operator    = { fg = blue },
	Keyword     = { fg = red },
	Exception   = { fg = red, style = 'bold' },
	Noise       = 'Delimiter',

	--[[ 4.1.4. Metatextual Information]]
	PreProc   = { fg = tan },
	Include   = { fg = blue, style = 'nocombine' },
	Define    = { fg = blue, style = 'nocombine' },
	Macro     = { fg = blue, style = 'italic' },
	PreCondit = { fg = tan, style = 'italic' },

	--[[ 4.1.5. Semantics]]
	Type         = { fg = yellow },
	StorageClass = { fg = orange },
	Structure    = { fg = blue, style = 'bold' },
	Typedef      = { fg = cyan, style = 'italic' },

	--[[ 4.1.6. Edge Cases]]
	Special        = { fg = magenta, style = 'bold' },
	SpecialChar    = { fg = red_light, style = 'italic' },
	SpecialKey     = 'Character',
	Tag            = 'Underlined',
	Delimiter      = { fg = orange },
	SpecialComment = { fg = gray, style = { 'bold', 'nocombine' } },
	Debug          = 'WarningMsg',

	--[[ 4.1.7. Help Syntax]]
	Underlined        = { fg = turqoise, style = 'underline' },
	Ignore            = { fg = gray },
	Error             = { bg = red_dark, fg = white },
	Todo              = { fg = yellow, style = { 'bold', 'underline' } },
	helpHyperTextJump = 'Underlined',
	helpSpecial       = 'Function',
	Hint              = { bg = magenta, fg = black, style = 'bold' },
	Info              = { bg = pink_light, fg = black, style = 'bold' },
	Warning           = { bg = orange, fg = black, style = 'bold' },

	--[[ 4.2... Editor UI  ]]
	--[[ 4.2.1. Status Line]]
	StatusLine       = { bg = gray_darker, fg = green_light },
	StatusLineNC     = { bg = gray_darker, fg = gray },
	StatusLineTerm   = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	--[[ 4.2.2. Separators]]
	VertSplit   = { fg = dsdark4 },
	TabLine     = { bg = gray_darker, fg = dsdark4 },
	TabLineFill = { bg = blue },
	TabLineSel  = { fg = dslight3 },
	Title       = { fg = dslight3 },

	--[[ 4.2.3. Conditional Line Highlighting]]
	Conceal         = 'NonText',
	CursorLine      = { bg = gray_darker },
	CursorLineNr    = { bg = gray_darker, fg = dslight1 },
	debugBreakpoint = 'ErrorMsg',
	debugPC         = 'ColorColumn',
	LineNr          = { fg = gray },
	QuickFixLine    = { bg = gray_darker },
	Visual          = { style = 'inverse' },
	VisualNOS       = { bg = gray_darker },

	--[[ 4.2.4. Popup Menu]]
	Pmenu      = { bg = dsdark2, fg = dslight1 },
	PmenuSbar  = { fg = dsdark2 },
	PmenuSel   = { fg = dsdark1, bg = blue, style = 'bold' },
	PmenuThumb = { bg = dsdark4 },
	WildMenu   = {},

	--[[ 4.2.5. Folds]]
	FoldColumn = { bg = gray_darker, style = 'bold' },
	Folded     = { bg = dsdark2, fg = magenta, style = 'italic' },

	--[[ 4.2.6. Diffs]]
	DiffAdd    = { fg = green_dark, style = 'inverse' },
	DiffChange = { fg = yellow, style = 'inverse' },
	DiffDelete = { fg = red, style = 'inverse' },
	DiffText   = { style = 'inverse' },

	--[[ 4.2.7. Searching]]
	IncSearch  = { style = 'inverse' },
	Search     = { bg = yellow, fg = dsdark2 },
	MatchParen = { bg = yellow, fg = green, style = { 'bold', 'underline' } },

	--[[ 4.2.8. Spelling]]
	SpellBad   = { style = { 'undercurl', color = red } },
	SpellCap   = { style = { 'undercurl', color = yellow } },
	SpellLocal = { style = { 'undercurl', color = green } },
	SpellRare  = { style = { 'undercurl', color = orange } },

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = { bg = dsColumn },
	SignColumn  = {},

	--[[ 4.2.10. Messages]]
	ErrorMsg   = { fg = red, style = 'bold' },
	HintMsg    = { fg = gray, style = 'italic' },
	InfoMsg    = { fg = green },
	ModeMsg    = { fg = yellow },
	WarningMsg = { fg = orange },
	Question   = { fg = orange_light, style = 'underline' },

	--[[ 4.2.11. LSP ]]
	LspDiagnosticsError               = 'Error',
	LspDiagnosticsErrorFloating       = 'ErrorMsg',
	LspDiagnosticsErrorSign           = 'ErrorMsg',

	LspDiagnosticsWarning             = 'Warning',
	LspDiagnosticsWarningFloating     = 'WarningMsg',
	LspDiagnosticsWarningSign         = 'WarningMsg',

	LspDiagnosticsHint                = 'Hint',
	LspDiagnosticsHintFloating        = 'HintMsg',
	LspDiagnosticsHintSign            = 'HintMsg',

	LspDiagnosticsInformation         = 'Info',
	LspDiagnosticsInformationFloating = 'InfoMsg',
	LspDiagnosticsInformationSign     = 'InfoMsg',

	LspDiagnosticsUnderline           = { style = { 'undercurl', color = white } },
	LspDiagnosticsUnderlineError      = 'CocErrorHighlight',
	LspDiagnosticsUnderlineHint       = 'CocHintHighlight',
	LspDiagnosticsUnderlineInfo       = 'CocInfoHighlight',
	LspDiagnosticsUnderlineWarning    = 'CocWarningHighlight',

	--[[ 4.2.12. Cursor ]]
	Cursor       = { style = 'inverse' },
	CursorIM     = 'Cursor',
	CursorColumn = { bg = gray_dark },

	--[[ 4.2.13. Misc ]]
	Directory = { fg = ice, style = 'bold' },

	--[[ 4.3. Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.3.1. C ]]
	cConstant    = 'Constant',
	cCustomClass = 'Type',

	--[[ 4.3.2. C++ ]]
	cppSTLexception = 'Exception',
	cppSTLnamespace = 'String',

	--[[ 4.3.3 C# ]]
	csBraces                       = 'Delimiter',
	csClass                        = 'Structure',
	csClassType                    = 'Type',
	csContextualStatement          = 'Conditional',
	csEndColon                     = 'Delimiter',
	csGeneric                      = 'Typedef',
	csInterpolation                = 'Include',
	csInterpolationDelimiter       = 'SpecialChar',
	csLogicSymbols                 = 'Operator',
	csModifier                     = 'Keyword',
	csNew                          = 'Operator',
	csNewType                      = 'Type',
	csParens                       = 'Delimiter',
	csPreCondit                    = 'PreProc',
	csRepeat                       = 'Repeat',
	csStorage                      = 'StorageClass',
	csUnspecifiedStatement         = 'Statement',
	csXmlTag                       = 'Define',
	csXmlTagName                   = 'Define',
	csQuote                        = 'Delimiter',
	razorCode                      = 'PreProc',
	razorcsLHSMemberAccessOperator = 'Noise',
	razorcsRHSMemberAccessOperator = 'razorcsLHSMemberAccessOperator',
	razorcsStringDelimiter         = 'razorhtmlValueDelimiter',
	razorcsTypeNullable            = 'Special',
	razorcsUnaryOperatorKeyword    = 'Operator',
	razorDelimiter                 = 'Delimiter',
	razorEventAttribute            = 'PreCondit',
	razorFor                       = 'razorIf',
	razorhtmlAttribute             = 'htmlArg',
	razorhtmlAttributeOperator     = 'Operator',
	razorhtmlTag                   = 'htmlTag',
	razorhtmlValueDelimiter        = 'Delimiter',
	razorIf                        = 'PreCondit',
	razorImplicitExpression        = 'PreProc',
	razorLine                      = 'Constant',
	razorUsing                     = 'Include',

	--[[ 4.3.4. CSS ]]
	cssBraces              = 'Delimiter',
	cssProp                = 'Label',
	cssSelectorOp          = 'Operator',
	cssTagName             = 'Structure',
	scssAmpersand          = 'Special',
	scssAttribute          = 'Noise',
	scssBoolean            = 'Boolean',
	scssDefault            = 'Keyword',
	scssElse               = 'scssIf',
	scssMixinName          = function(self)
		local super = self.cssClassName
		return { bg = super.bg, fg = super.fg, style = 'Italic' }
	end,
	scssIf                 = 'PreCondit',
	scssInclude            = 'Include',
	cssClassName           = 'Identifier',
	cssClassNameDot        = 'Noise',
	cssFlexibleBoxAttr     = 'cssAttr',
	cssFunctionComma       = 'Noise',
	cssImportant           = 'Exception',
	cssNoise               = 'Noise',
	cssPseudoClass         = 'Special',
	cssPseudoClassId       = 'cssSelectorOp',
	cssUnitDecorators      = 'Type',
	cssAtRule              = 'PreCondit',
	cssAttr                = 'Keyword',
	cssAttrComma           = 'Noise',
	cssAttrRegion          = 'Keyword',
	scssSelectorChar       = 'Delimiter',
	scssDefinition         = 'PreProc',
	scssSelectorName       = 'Identifier',
	scssVariable           = 'Define',
	scssVariableAssignment = 'Operator',

	--[[ 4.3.5. Dart ]]
	dartLibrary = 'Statement',
	dartFunction = 'Function',

	--[[ 4.3.6. dot ]]
	dotKeyChar = 'Character',
	dotType    = 'Type',

	--[[ 4.3.7. Go ]]
	goBlock                 = 'Delimiter',
	goBoolean               = 'Boolean',
	goBuiltins              = 'Operator',
	goField                 = 'Identifier',
	goFloat                 = 'Float',
	goFormatSpecifier       = 'Character',
	goFunction              = 'Function',
	goFunctionCall          = 'goFunction',
	goFunctionReturn        = NONE,
	goMethodCall            = 'goFunctionCall',
	goParamType             = 'goReceiverType',
	goPointerOperator       = 'SpecialChar',
	goPredefinedIdentifiers = 'Constant',
	goReceiver              = 'goBlock',
	goReceiverType          = 'goTypeName',
	goSimpleParams          = 'goBlock',
	goType                  = 'Type',
	goTypeConstructor       = 'goFunction',
	goTypeName              = 'Type',
	goVarAssign             = 'Identifier',
	goVarDefs               = 'goVarAssign',

	--[[ 4.3.8. HTML ]]
	htmlArg            = 'Label',
	htmlBold           = { fg = gray_light, style = 'bold' },
	htmlTitle          = 'htmlBold',
	htmlEndTag         = 'htmlTag',
	htmlH1             = 'markdownH1',
	htmlH2             = 'markdownH2',
	htmlH3             = 'markdownH3',
	htmlH4             = 'markdownH4',
	htmlH5             = 'markdownH5',
	htmlH6             = 'markdownH6',
	htmlItalic         = { style = 'italic' },
	htmlSpecialTagName = 'Keyword',
	htmlTag            = 'Special',
	htmlTagN           = 'Typedef',
	htmlTagName        = 'Type',

	--[[ 4.3.9. Java ]]
	javaClassDecl = 'Structure',

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock   = 'Function',
	jsObjectKey   = 'Type',
	jsReturn      = 'Keyword',
	jsVariableDef = 'Identifier',

	--[[ 4.3.11. JSON ]]
	jsonBraces        = 'luaBraces',
	jsonEscape        = 'SpecialChar',
	jsonKeywordMatch  = 'Operator',
	jsonNull          = 'Constant',
	jsonQuote         = 'Delimiter',
	jsonString        = 'String',
	jsonStringSQError = 'Exception',

	--[[ 4.3.12. Lua ]]
	luaBraces        = 'Structure',
	luaBrackets      = 'Delimiter',
	luaBuiltin       = 'Keyword',
	luaComma         = 'Delimiter',
	luaFuncArgName   = 'Identifier',
	luaFuncCall      = 'Function',
	luaFuncId        = 'luaNoise',
	luaFuncKeyword   = 'Type',
	luaFuncName      = 'Function',
	luaFuncParens    = 'Delimiter',
	luaFuncTable     = 'Structure',
	luaLocal         = 'Type',
	luaNoise         = 'Delimiter',
	luaParens        = 'Delimiter',
	luaSpecialTable  = 'Structure',
	luaSpecialValue  = 'Function',
	luaIn            = 'luaRepeat',
	luaStringLongTag = function(self)
		local delimiter = self.Delimiter
		return { bg = delimiter.bg, fg = delimiter.fg, style = 'italic' }
	end,

	--[[ 4.3.12. Make ]]
	makeCommands   = 'Statment',
	makeSpecTarget = 'Type',

	--[[ 4.3.13. Markdown ]]
	markdownH1       = { fg = red, style = 'bold' },
	markdownH2       = { fg = orange, style = 'bold' },
	markdownH3       = { fg = yellow, style = 'bold' },
	markdownH4       = { fg = green_dark, style = 'bold' },
	markdownH5       = { fg = cyan, style = 'bold' },
	markdownH6       = { fg = purple_light, style = 'bold' },
	mkdBold          = 'Ignore',
	mkdCode          = 'Keyword',
	mkdCodeDelimiter = 'mkdBold',
	mkdCodeStart     = 'mkdCodeDelimiter',
	mkdCodeEnd       = 'mkdCodeStart',
	mkdHeading       = 'Delimiter',
	mkdItalic        = 'mkdBold',
	mkdLineBreak     = 'NonText',
	mkdListItem      = 'Special',
	mkdRule          = function(self) return { fg = self.Ignore.fg, style = { 'underline', color = self.Delimiter.fg } } end,
	texMathMatcher   = 'Number',
	texMathZoneX     = 'Number',
	texMathZoneY     = 'Number',

	--[[ 4.3.20. Python ]]
	pythonBrackets        = 'Delimiter',
	pythonBuiltinFunc     = 'Operator',
	pythonBuiltinObj      = 'Type',
	pythonBuiltinType     = 'Type',
	pythonClass           = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator       = 'PreProc',
	pythonDottedName      = 'Identifier',
	pythonError           = 'Error',
	pythonException       = 'Exception',
	pythonInclude         = 'Include',
	pythonIndentError     = 'pythonError',
	pythonLambdaExpr      = 'pythonOperator',
	pythonOperator        = 'Operator',
	pythonParam           = 'Identifier',
	pythonParameters      = 'Delimiter',
	pythonSelf            = 'Statement',
	pythonSpaceError      = 'pythonError',
	pythonStatement       = 'Statement',

	--[[ 4.3.21. Ruby ]]
	rubyClass                  = 'Structure',
	rubyDefine                 = 'Define',
	rubyInterpolationDelimiter = 'Delimiter',

	--[[ 4.3.22. Rust ]]
	rustKeyword   = 'Keyword',
	rustModPath   = 'Include',
	rustScopeDecl = 'Delimiter',
	rustTrait     = 'StorageClass',

	--[[ 4.3.23. Scala ]]
	scalaKeyword        = 'Keyword',
	scalaNameDefinition = 'Identifier',

	--[[ 4.3.24. shell ]]
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop        = 'Repeat',
	shParen       = 'Delimiter',
	shQuote       = 'Delimiter',
	shSet         = 'Statement',
	shTestOpr     = 'Debug',

	--[[ 4.3.25. Solidity ]]
	solBuiltinType  = 'Type',
	solContract     = 'Typedef',
	solContractName = 'Function',

	--[[ 4.3.26. TOML ]]
	tomlComment = 'Comment',
	tomlKey     = 'Label',
	tomlTable   = 'Structure',
	tomlDate    = 'Special',
	tomlFloat   = 'Float',

	--[[ 4.3.27. VimScript ]]
	helpSpecial    = 'Special',
	vimFgBgAttrib  = 'Constant',
	vimHiCterm     = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup     = 'Typedef',
	vimHiGui       = 'vimHiCterm',
	vimHiGuiFgBg   = 'vimHiGui',
	vimHiKeyList   = 'Operator',
	vimIsCommand   = 'Identifier',
	vimSetEqual    = 'Operator',
	vimNotation    = 'Operator',
	vimBracket     = 'Define',
	vimMapModKey   = 'Operator',
	vimFuncSID     = 'Operator',
	vimSetSep      = 'Constant',
	vimSep         = 'Constant',
	vimContinue    = 'Constant',
	vimCmdSep      = 'Delimiter',
	vimFunction    = 'Function',
	vimSetSep      = 'Delimiter',
	vimUserFunc    = 'vimFunction',
	vimOption      = 'Keyword',
	vimScriptDelim = 'Ignore',
	vimSet         = 'String',

	--[[ 4.3.28. XML ]]
	xmlAttrib  = 'htmlArg',
	xmlEndTag  = 'xmlTag',
	xmlEqual   = 'Operator',
	xmlTag     = 'htmlTag',
	xmlTagName = 'htmlTagName',

	--[[ 4.3.29. SQL ]]
	sqlKeyword   = 'Keyword',
	sqlParen     = 'Delimiter',
	sqlSpecial   = 'Constant',
	sqlStatement = 'Statement',
	sqlParenFunc = 'Function',

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = 'Title',
	dosiniLabel  = 'Label',

	--[[ 4.3.31. Crontab ]]
	crontabDay  = 'StorageClass',
	crontabDow  = 'String',
	crontabHr   = 'Number',
	crontabMin  = 'Float',
	crontabMnth = 'Structure',

	--[[ 4.3.32. PlantUML ]]
	plantumlArrowLR   = 'Statement',
	plantumlColonLine = NONE,
	plantumlMindmap   = 'Label',
	plantumlMindmap2  = 'Label',

	--[[ 4.3.33. YAML ]]
	yamlKey = 'Label',

	--[[ 4.3.34. Git ]]
	diffAdded              = 'DiffAdd',
	diffRemoved            = 'DiffDelete',
	gitcommitHeader        = 'SpecialComment',
	gitcommitDiscardedFile = 'gitcommitSelectedFile',
	gitcommitOverFlow      = 'Error',
	gitcommitSelectedFile  = 'Directory',
	gitcommitSummary       = 'Title',
	gitcommitUntrackedFile = 'gitcommitSelectedFile',
	gitconfigAssignment    = 'String',
	gitconfigEscape        = 'SpecialChar',
	gitconfigNone          = 'Operator',
	gitconfigSection       = 'Structure',
	gitconfigVariable      = 'Label',
	gitrebaseBreak         = 'Keyword',
	gitrebaseCommit        = 'Tag',
	gitrebaseDrop          = 'Exception',
	gitrebaseEdit          = 'Define',
	gitrebaseExec          = 'PreProc',
	gitrebaseFixup         = 'gitrebaseSquash',
	gitrebaseMerge         = 'PreProc',
	gitrebasePick          = 'Include',
	gitrebaseReset         = 'gitrebaseLabel',
	gitrebaseReword        = 'gitrebasePick',
	gitrebaseSquash        = 'Macro',
	gitrebaseSummary       = 'Title',

	--[[ 4.3.35. Vimtex ]]
	texMathRegion   = 'Number',
	texMathSub      = 'Number',
	texMathSuper    = 'Number',
	texMathRegionX  = 'Number',
	texMathRegionXX = 'Number',

	--[[ 4.3.36. Coq ]]
	coqConstructor       = 'Constant',
	coqDefBinderType     = 'coqDefType',
	coqDefContents1      = 'coqConstructor',
	coqDefType           = 'Typedef',
	coqIndBinderTerm     = 'coqDefBinderType',
	coqIndConstructor    = 'Delimiter',
	coqIndTerm           = 'Type',
	coqKwd               = 'Keyword',
	coqKwdParen          = 'Function',
	coqProofDelim        = 'coqVernacCmd',
	coqProofDot          = 'coqTermPunctuation',
	coqProofPunctuation  = 'coqTermPunctuation',
	coqRequire           = 'Include',
	coqTactic            = 'Operator',
	coqTermPunctuation   = 'Delimiter',
	coqVernacCmd         = 'Statement',
	coqVernacPunctuation = 'coqTermPunctuation',

	--[[ 4.3.37 Help ]]
	helpHeader = 'Label',
	helpOption = 'Keyword',
	helpHeadline = 'Title',
	helpSectionDelim = 'Delimiter',
	helpHyperTextJump = 'Underlined',

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.4.1. ALE ]]
	ALEErrorSign   = 'ErrorMsg',
	ALEWarningSign = 'WarningMsg',

	--[[ 4.4.2. coc.nvim ]]
	CocErrorHighlight   = { style = { 'undercurl', color = red } },
	CocHintHighlight    = { style = { 'undercurl', color = magenta } },
	CocInfoHighlight    = { style = { 'undercurl', color = pink_light } },
	CocWarningHighlight = { style = { 'undercurl', color = orange } },
	CocErrorSign        = 'ALEErrorSign',
	CocHintSign         = 'HintMsg',
	CocInfoSign         = 'InfoMsg',
	CocWarningSign      = 'ALEWarningSign',

	--[[ 4.4.2. vim-jumpmotion / vim-easymotion ]]
	EasyMotion = 'IncSearch',
	JumpMotion = 'EasyMotion',

	--[[ 4.4.4. vim-gitgutter / vim-signify ]]
	GitGutterAdd            = { fg = green },
	GitGutterChange         = { fg = yellow },
	GitGutterDelete         = { fg = red },
	GitGutterChangeDelete   = { fg = orange },

	SignifySignAdd          = 'GitGutterAdd',
	SignifySignChange       = 'GitGutterChange',
	SignifySignDelete       = 'GitGutterDelete',
	SignifySignChangeDelete = 'GitGutterChangeDelete',

	--[[ 4.4.5. vim-indent-guides ]]
	IndentGuidesOdd  = { bg = gray_darker },
	IndentGuidesEven = { bg = gray },

	--[[ 4.4.7. NERDTree ]]
	NERDTreeCWD        = 'Label',
	NERDTreeUp         = 'Operator',
	NERDTreeDir        = 'Directory',
	NERDTreeDirSlash   = 'Delimiter',
	NERDTreeOpenable   = 'NERDTreeDir',
	NERDTreeClosable   = 'NERDTreeOpenable',
	NERDTreeExecFile   = 'Function',
	NERDTreeLinkTarget = 'Tag',

	--[[ 4.4.8. nvim-treesitter ]]
	TSAnnotation = { fg = blue },
	TSAttribute = { fg = blue, style = 'italic' },
	TSBoolean = { fg = purple },
	TSCharacter = { fg = purple },
	TSComment = { fg = gray },
	TSConditional = { fg = red },
	-- TSConstant = { fg = white },
	TSConstBuiltin = { fg = orange },
	-- TSConstMacro = { fg = white },
	-- TSConstructor = { fg = white },
	TSException = { fg = red },
	-- TSField = { fg = white },
	-- TSFloat = { fg = white },
	TSFunction = { fg = green, style = 'bold' },
	-- TSFuncBuiltin = { fg = white },
	-- TSFuncMacro = { fg = white },
	TSInclude = { fg = red },
	TSKeyword = { fg = red },
	TSKeywordReturn = { fg = red },
	TSKeywordFunction = { fg = red },
	TSKeywordOperator = { fg = red },
	TSKeywordModifier = { fg = orange },
	-- TSLabel = { fg = white },
	TSMethod = { fg = green, style = 'bold' },
	-- TSNamespace = { fg = white },
	-- TSNone = { fg = white },
	TSNumber = { fg = purple },
	TSOperator = { fg = blue },
	TSParameter = { fg = dslight3, style = 'italic' },
	-- TSParameterReference = { fg = white },
	TSProperty = { fg = blue },
	-- TSPunctBracket = { fg = white },
	-- TSPunctDelimiter = { fg = white },
	-- TSPunctSpecial = { fg = white },
	TSRepeat = { fg = red },
	-- TSStorageClass = { fg = white },
	-- TSStorageClassLifetime = { fg = white },
	TSString = { fg = green },
	-- TSStringEscape = { fg = white },
	-- TSStringRegex = { fg = white },
	-- TSStructure = { fg = white },
	-- TSSymbol = { fg = white },
	TSTag = { fg = red },
	-- TSTagDelimiter = { fg = white },
	-- TSText = { fg = white },
	-- TSStrike = { fg = white },
	-- TSMath = { fg = white },
	TSType = { fg = yellow },
	TSTypeBuiltin = { fg = yellow },
	TSTypeQualifier = { fg = orange },
	-- TSURI = { fg = white },
	TSVariable = { fg = dslight2 },
	TSVariableBuiltin = { fg = orange },
	-- pythonTSVariable = { fg = white },
	-- pythonTSDecorator = { fg = white },
	-- rustTSVariable = { fg = white },
	-- javascriptTSConditional = { fg = white },
	-- javascriptTSVariable = { fg = white },


	--[[ 4.4.9. barbar.nvim ]]
	BufferCurrent        = 'TabLineSel',
	BufferCurrentIndex   = function(self) return { fg = self.InfoMsg.fg, bg = self.BufferCurrent.bg } end,
	BufferCurrentMod     = { fg = tan, bg = black, style = 'bold' },
	BufferCurrentSign    = 'HintMsg',
	BufferCurrentTarget  = 'BufferCurrentSign',

	BufferInactive       = 'BufferVisible',
	BufferInactiveIndex  = function(self) return { fg = self.InfoMsg.fg, bg = self.BufferInactive.bg } end,
	BufferInactiveMod    = 'BufferVisibleMod',
	BufferInactiveSign   = 'BufferVisibleSign',
	BufferInactiveTarget = 'BufferVisibleTarget',

	BufferTabpages       = { fg = BG, bg = FG, style = 'bold' },
	BufferTabpageFill    = 'TabLineFill',

	BufferVisible        = 'TabLine',
	BufferVisibleIndex   = function(self) return { fg = self.InfoMsg.fg, bg = self.BufferVisible.bg } end,
	BufferVisibleMod     = { fg = white, bg = gray_darker, style = 'italic' },
	BufferVisibleSign    = 'BufferVisible',
	BufferVisibleTarget  = function(self)
		local super = self.BufferVisibleMod
		return { fg = super.fg, bg = super.bg, style = 'bold' }
	end,

	--[[ 4.4.10. vim-sandwhich ]]
	OperatorSandwichChange = 'DiffText',

	--[[ 4.4.11. Fern ]]
	FernBranchText = 'Directory',

	--[[ 4.4.12. LSPSaga ]]
	DefinitionCount = 'Number',
	DefinitionIcon = 'Special',
	ReferencesCount = 'Number',
	ReferencesIcon = 'DefinitionIcon',
	TargetFileName = 'Directory',
	TargetWord = 'Title',
}

--[[ Step 5: Terminal Colors
	Define the color palette used by :terminal when in GUI Vim
	or in TUI Vim when 'termguicolors' is enabled. If this list
	is empty or if it doesn't contain exactly 16 items, the corresponding
	Vim variable won't be set.

	The expected values are colors defined in step 3.

	Terminal emulators use a basic palette of 16 colors that can be
	addressed by CLI and TUI tools via their name or their index, from
	0 to 15. The list is not really standardized but it is generally
	assumed to look like this:

	 | Index  | Name          |
	 |:------:|:-------------:|
	 | 1      | black         |
	 | 2      | darkred       |
	 | 3      | darkgreen     |
	 | 4      | darkyellow    |
	 | 5      | darkblue      |
	 | 6      | darkmagenta   |
	 | 7      | darkcyan      |
	 | 8      | gray          |
	 | 9      | darkgray      |
	 | 10     | red           |
	 | 11     | green         |
	 | 12     | yellow        |
	 | 13     | blue          |
	 | 14     | magenta       |
	 | 15     | cyan          |
	 | 16     | white         |

	While you are certainly free to make colors 0 to 7 shades of blue,
	this will inevitably cause usability issues so… be careful.
]]

local terminal_ansi_colors = {
	-- [1]  = black,
	-- [2]  = red_dark,
	-- [3]  = green_dark,
	-- [4]  = orange,
	-- [5]  = blue,
	-- [6]  = magenta_dark,
	-- [7]  = teal,
	-- [8]  = gray,
	-- [9]  = gray_dark,
	-- [10] = red,
	-- [11] = green,
	-- [12] = yellow,
	-- [13] = turqoise,
	-- [14] = purple,
	-- [15] = cyan,
	-- [16] = gray_light
}

--[[ Step 5: Sourcing
	When you wish to load your colorscheme, simply add this folder with a plugin manager
	and then use `colorscheme <your colorscheme name>`. For example, in my configuration,
	I source deus by using `colorscheme deus`.

	These online resources can help you design your colorscheme:

	1. the xterm palette.
		* http://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
	2. play with hexadecimal colors right in the address bar (currently down).
		* http://whatcolor.herokuapp.com/
	3. similar concept, fuzzier implementation.
		* http://color.hailpixel.com/
	4. similar concept, fancier implementation.
		* http://colourco.de/
	5. extract a palette from an image.
		* http://www.colr.org/
	6. search for 'word', get images and color palettes.
		* http://colores.manugarri.com/
	7. user-created palettes.
		* http://www.colourlovers.com/palettes
	8. a no-nonsense colorscheme generator.
		* http://www.pluaang.dk/color+scheme/
	9. Adobe's fancy colorscheme generator.
		* https://color.adobe.com/
	10. The classic 'Color Scheme Designer', rebranded.
		* http://paletton.com/
	11. A very smart palette generator.
		* http://vrl.cs.brown.edu/color
	12. 'I Made My Own Colour Scheme and You Can Too!'.
		* https://cmcenroe.me/2018/04/03/colour-scheme.html

	A few things to note:

	* The Windows console (`cmd`) is limited to the 16 so-called 'ANSI' colors but it used to
			have a few of them interverted which makes numbers impractical. Use color names
			instead of numbers: :help cterm-colors
		* The Windows console doesn't do italics, underlines or bolded text;
			it is limited to normal and reverse. Keep that in mind if you want
			your colorscheme to be usable in as many environments as possible by as many
			people as possible.
		* The Windows TERMINAL, however, is capable of more.
	* All of the terminal emulators in use these days allow their users to
		change the 16 so-called 'ANSI' colors. It is also possible on some platforms
		to change some or all of the 256 colors in the xterm palette. Don't take
		anything for granted.
	* When used against a light background, strong colors work better than muted
		ones. Light or dark doesn't really matters. Also, it is harder to discriminate
		between two similar colors on a light background.
	* Both strong and muted colors work well against a dark background. It is also
		easier to work with similar colors, but dark colors don't work at all.
	* Use as many text samples as possible. String-heavy languages may look completely
		different than keyword-heavy ones. This can have an impact on the usability
		of your colorscheme.
	* Most terminal emulators and terminal multiplexers currently in use on unix-like
		systems support 256 colors but they almost always default to a '$TERM' that tells
		Vim otherwise. Your users will need to make sure their terminal emulator/multiplexer
		is correctly set up if they want to enjoy the best possible experience.
]]

--[[ NOTHING INSIDE THIS FILE NEEDS TO BE EDITED BY THE USER. ]]

--[[
	/*
	 * IMPORTS
	 */
--]]

local vim = vim
local api = vim.api
local exe = api.nvim_command
local fn  = vim.fn
local go = vim.go

--[[
	/*
	 * VARS
	 */
--]]

-- These are constants for the indexes in the colors that were defined before.
local _NONE = 'NONE'
local _PALETTE_256  = 2
local _PALETTE_ANSI = 3
local _PALETTE_HEX  = 1
local _TYPE_STRING = 'string'
local _TYPE_TABLE  = 'table'

-- Determine which set of colors to use.
local _USE_HEX = go.termguicolors
local _USE_256 = string.find(vim.env.TERM, '256')

--[[
	/*
	 * HELPER FUNCTIONS
	 */
--]]

-- Add the 'blend' parameter to some highlight command, if there is one.
local function blend(command, attributes) -- {{{ †
	if attributes.blend then -- There is a value for the `highlight-blend` field.
		command[#command+1]=' blend='..attributes.blend
	end
end --}}} ‡

-- filter a highlight group's style information
local function filter_group_style(value)
	return value ~= 'background'
		and value ~= 'blend'
		and value ~= 'foreground'
		and value ~= 'special'
end

-- Get the color value of a color variable, or "NONE" as a default.
local function get(color, index) -- {{{ †
	if type(color) == _TYPE_TABLE and color[index] then
		return color[index]
	elseif type(color) == _TYPE_STRING then
		return color
	else
		return _NONE
	end
end --}}} ‡

--[[ If using hex and 256-bit colors, then populate the gui* and cterm* args.
	If using 16-bit colors, just populate the cterm* args. ]]
local colorize = _USE_HEX and function(command, attributes) -- {{{ †
	command[#command+1]=' guibg='..get(attributes.bg, _PALETTE_HEX)..' guifg='..get(attributes.fg, _PALETTE_HEX)
end or _USE_256 and function(command, attributes)
	command[#command+1]=' ctermbg='..get(attributes.bg, _PALETTE_256)..' ctermfg='..get(attributes.fg, _PALETTE_256)
end or function(command, attributes)
	command[#command+1]=' ctermbg='..get(attributes.bg, _PALETTE_ANSI)..' ctermfg='..get(attributes.fg, _PALETTE_ANSI)
end --}}} ‡

-- This function appends `selected_attributes` to the end of `highlight_cmd`.
local stylize = _USE_HEX and function(command, style, color)
	command[#command+1]=' gui='..style

	if color then -- There is an undercurl color.
		command[#command+1]=' guisp='..get(color, _PALETTE_HEX)
	end
end or function(command, style)
	command[#command+1]=' cterm='..style
end

local function tohex(rgb) return string.format('#%06x', rgb) end

-- Load specific &bg instructions
local function use_background_with(attributes)
	return setmetatable(
		attributes[go.background],
		{['__index'] = attributes}
	)
end

--[[
	/*
	 * MODULE
	 */
--]]

local highlite = {}

function highlite.group(group_name)
	local no_errors, group_definition = pcall(api.nvim_get_hl_by_name, group_name, go.termguicolors)

	if not no_errors then group_definition = {} end

	-- the style of the highlight group
	local style = vim.tbl_filter(filter_group_style, vim.tbl_keys(group_definition))
	if group_definition.special then
		style.color = tohex(group_definition.special)
	end

	return {
		['fg'] = group_definition.foreground and tohex(group_definition.foreground) or _NONE,
		['bg'] = group_definition.background and tohex(group_definition.background) or _NONE,
		['blend'] = group_definition.blend,
		['style'] = style or _NONE
	}
end

-- Generate a `:highlight` command from a group and some attributes.
function highlite.highlight(highlight_group, attributes) -- {{{ †
	-- The base highlight command
	local highlight_cmd = {'hi! ', highlight_group}

	if type(attributes) == _TYPE_STRING then -- `highlight_group` is a link to another group.
		highlight_cmd[3] = highlight_cmd[2]
		highlight_cmd[2] = 'link '
		highlight_cmd[4] = ' '
		highlight_cmd[5] = attributes
	else -- The `highlight_group` is uniquely defined.
		-- Take care of special instructions for certain background colors.
		if attributes[go.background] then
			attributes = use_background_with(attributes)
		end

		colorize(highlight_cmd, attributes)
		blend(highlight_cmd, attributes)

		local style = attributes.style or _NONE

		if type(style) == _TYPE_TABLE then
			-- Concat all of the entries together with a comma between before styling.
			stylize(highlight_cmd, table.concat(style, ','), style.color)
		else -- The style is just a single entry.
			stylize(highlight_cmd, style)
		end
	end

	exe(table.concat(highlight_cmd))
end --}}} ‡

function highlite:highlight_terminal(terminal_ansi_colors)
	for index, color in ipairs(terminal_ansi_colors) do vim.g['terminal_color_'..(index-1)] =
		go.termguicolors and color[_PALETTE_HEX] or color[_PALETTE_256] or get(color, _PALETTE_ANSI)
	end
end

setmetatable(highlite, {['__call'] = function(self, normal, highlights, terminal_ansi_colors)
	-- function to resolve function highlight groups being defined by function calls.
	local function resolve(tbl, key, resolve_links)
		local value = tbl[key]
		local value_type = type(value)
		if value_type == 'function' then
			-- lazily cache the result; next time, if it isn't a function this step will be skipped
			tbl[key] = value(setmetatable({}, {
				['__index'] = function(_, inner_key) return resolve(tbl, inner_key, true) end
			}))
		elseif value_type == _TYPE_STRING and not string.find(value, '^#') and resolve_links then
			return resolve(tbl, tbl[key], resolve_links)
		end

		return tbl[key]
	end

	-- save the colors_name before syntax reset
	local color_name = vim.g.colors_name

	-- If the syntax has been enabled, reset it.
	if fn.exists 'syntax_on' then exe 'syntax reset' end

	-- replace the colors_name
	vim.g.colors_name = color_name
	color_name = nil

	-- If we aren't using hex nor 256 colorsets.
	if not (_USE_HEX or _USE_256) then vim.cmd('set notermguicolors')  end

	-- Highlight the baseline.
	self.highlight('Normal', normal)

	-- Highlight everything else.
	for highlight_group, _ in pairs(highlights) do
		self.highlight(highlight_group, resolve(highlights, highlight_group, false))
	end

	-- Set the terminal highlight colors.
	self:highlight_terminal(terminal_ansi_colors)
end})

highlite(
	highlight_group_normal,
	highlight_groups,
	terminal_ansi_colors
)

-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).
-- vim: ft=lua
