-- General ---------------------------------------------------
vim.loader.enable()

vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.opt.termguicolors = true

-- Encoding --------------------------------------------------
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Shell -----------------------------------------------------
vim.opt.shell = "fish"

-- Update Time -----------------------------------------------
vim.opt.updatetime = 250

-- UI --------------------------------------------------------
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 3
vim.opt.signcolumn = "yes"
vim.opt.showmode = false

-- Scrolling & Splits ----------------------------------------
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"

-- Text ------------------------------------------------------
vim.opt.wrap = false
vim.opt.breakindent = true

-- Indentation -----------------------------------------------
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search ----------------------------------------------------
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Clipboard -------------------------------------------------
vim.opt.clipboard = "unnamedplus"

-- Files -----------------------------------------------------
vim.opt.backup = false
vim.opt.backspace = { "start", "eol", "indent" }

-- Invisible Characters --------------------------------------
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  trail = "·",
  nbsp = "␣",
}

-- Undo file -------------------------------------------------
vim.opt.undofile = true
