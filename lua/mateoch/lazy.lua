local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins={
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "github/copilot.vim"},
	{'romainl/vim-cool'},
	{'tpope/vim-commentary'},
	--- Uncomment these if you want to manage LSP servers from neovim
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{ "mbbill/undotree"},
	{ "tpope/vim-fugitive"},
	{
	   'nvim-telescope/telescope.nvim', tag = '0.1.5',
           dependencies = { 'nvim-lua/plenary.nvim' } 
   	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}

local opts={}
require("lazy").setup(plugins,opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n','<leader>ff',builtin.find_files,{})
vim.keymap.set('n','<leader>ft',builtin.live_grep,{})

local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed={"lua","python"},
	highlight = { enable = true },
	indent = { enable = true }, 

})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
