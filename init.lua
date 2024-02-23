require("mateoch")
local set=vim.opt
 
set.tabstop=4
set.softtabstop=4
set.shiftwidth=4
set.expandtab=true
 
set.smartindent=true
 
set.wrap=false
 
set.swapfile=false
set.backup=false
set.undodir="/home/mateo/.config/nvim/undodir"
set.undofile=true
 
set.hlsearch=true
set.incsearch=true
 
set.termguicolors=true

set.scrolloff=8
set.signcolumn="yes"
set.isfname:append("@-@")

set.updatetime=50

set.colorcolumn=""
 
set.diffopt="filler"

vim.wo.number=true
vim.wo.relativenumber=true
