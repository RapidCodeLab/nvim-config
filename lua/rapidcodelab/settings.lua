local g = vim.g
local o = vim.o

o.number = true 
o.relativenumber = true
o.showmode = false

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.clipboard = unnamedplus
o.showtabline = 2

g.mapleader = " "


vim.cmd([[au FileType * if index(['wipe', 'delete'], &bufhidden) >= 0 | set nobuflisted | endif]])

