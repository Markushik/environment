local opt = vim.opt
local g = vim.g

-- indention opt
opt.autoindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.shiftround = true

-- search opt
opt.hlsearch = true
--opt.ingnorecase = true
opt.incsearch = true

-- render opt
opt.encoding = "utf-8"
opt.linebreak = true
opt.wrap = true

-- ui lua
opt.laststatus = 2
opt.ruler = true
opt.wildmenu = true
opt.cursorline = true
opt.number = true
opt.scrolloff = 17
opt.errorbells = false
opt.visualbell = true
opt.title = true
opt.mouse = "a"
opt.linespace = 4

