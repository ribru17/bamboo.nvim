# Bamboo.nvim

Dark green theme for Neovim >= 0.5 based on
[Atom One Dark](https://github.com/atom/atom/tree/master/packages/one-dark-ui) &
[Atom One Light](https://github.com/atom/atom/tree/master/packages/one-light-ui)
theme written in lua with
[TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter) syntax
highlight.

_For latest [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
syntax highlighting, upgrade to Neovim 0.8.0 or later built with Tree-sitter
0.20.3+_

### Features

- Supports multiple plugins with hand-picked proper colors
- Customize `Colors`, `Highlights` and `Code style` of the theme as you like
  (Refer to [Customization](#customization))

## Installation

Install via your favorite package manager

```lua
-- Using lazy.nvim
{
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
}
```

## Configuration

### Enable theme

```lua
-- Lua
require('bamboo').load()
```

```vim
" Vim
colorscheme bamboo
```

### Change default style

```lua
-- Lua
require('bamboo').setup {
    style = 'darker'
}
require('bamboo').load()
```

```vim
" Vim
let g:bamboo_config = {
    \ 'style': 'darker',
\}
colorscheme bamboo
```

> **Options:** dark, darker, cool, deep, warm, warmer, light

## Default Configuration

```lua
-- Lua
require('bamboo').setup  {
    -- Main options --
    transparent = false,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
```

### Vimscript configuration

Bamboo can be configured also with Vimscript, using the global dictionary
`g:bamboo_config`. **NOTE**: when setting boolean values use `v:true` and
`v:false` instead of 0 and 1

Example:

```vim
let g:bamboo_config = {
  \ 'style': 'deep',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }
colorscheme bamboo
```

## Customization

Example custom colors and Highlights config

```lua
require('bamboo').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    ["@keyword"] = {fg = '$green'},
    ["@string"] = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    ["@function"] = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    ["@function.builtin"] = {fg = '#0059ff'}
  }
}
```

Note that TreeSitter keywords have been changed after neovim version 0.8 and
onwards. TS prefix is trimmed and lowercase words should be used separated with
'.'

The old way before neovim 0.8 looks like this. For all keywords see
[this](https://github.com/navarasu/bamboo.nvim/blob/master/lua/bamboo/highlights.lua#L133-L257)
file from line 133 to 257

```lua
require('bamboo').setup {
  colors = {
    bright_orange = "#ff8800",    -- define a new color
    green = '#00ffaa',            -- redefine an existing color
  },
  highlights = {
    TSKeyword = {fg = '$green'},
    TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
    TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
    TSFuncBuiltin = {fg = '#0059ff'}
  }
}
```

## Plugins Configuration

### Enable lualine

To Enable the `bamboo` theme for `Lualine`, specify theme as `bamboo`:

```lua
require('lualine').setup {
  options = {
    theme = 'bamboo'
    -- ... your lualine config
  }
}
```

## Plugins Supported

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSPDiagnostics](https://neovim.io/doc/user/lsp.html)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [WhichKey](https://github.com/folke/which-key.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [GitGutter](https://github.com/airblade/vim-gitgutter)
- [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
- [VimFugitive](https://github.com/tpope/vim-fugitive)
- [DiffView](https://github.com/sindrets/diffview.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Neotest](https://github.com/nvim-neotest/neotest)
- [Barbecue](https://github.com/utilyre/barbecue.nvim)

## Reference

- [onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [tokyodark.nvim](https://github.com/tiagovla/tokyodark.nvim)
- [one-dark-theme](https://github.com/andresmichel/one-dark-theme)

## License

[MIT](https://choosealicense.com/licenses/mit/)
