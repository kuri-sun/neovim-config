local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(

    function(use)

        ---------------------
        -- Package Manager --
        ---------------------

        use 'wbthomason/packer.nvim'

        ----------------------------------------
        -- Theme, Icons, Statusbar, Bufferbar --
        ----------------------------------------

        use 'folke/tokyonight.nvim'
        use "lunarvim/darkplus.nvim"        
        use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
        use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    

        ----------------------
        -- FZF PLUGINS --
        ----------------------

        use 'junegunn/fzf'
        use 'junegunn/fzf.vim'


        ----------------------
        -- TOGGLE TERMINAL --
        ----------------------
        use {'akinsho/toggleterm.nvim', tag = '*', config = function()
          require('toggleterm').setup({
              open_mapping = [[<c-\>]],
          })
        end}
        

        ----------------------
        -- GIT INTEGRATIONS --
        ----------------------
        use 'tpope/vim-fugitive'
        use 'tpope/vim-rhubarb'
        use 'mhinz/vim-signify'


        ----------------------
        -- CMP PLUGINS --
        ----------------------
        use "hrsh7th/nvim-cmp" -- The completion plugin
        use "hrsh7th/cmp-buffer" -- buffer completions
        use "hrsh7th/cmp-path" -- path completions
        use "hrsh7th/cmp-cmdline" -- cmdline completions
        use "saadparwaiz1/cmp_luasnip" -- snippet completions
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-nvim-lua"


        ----------------------
        -- AUTO COMPELETION --
        ----------------------
        use "neovim/nvim-lspconfig" -- enable LSP
        use "williamboman/nvim-lsp-installer" -- simple to use language server installer
        use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

        
        -- snippets
        use "L3MON4D3/LuaSnip" --snippet engine
        use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if PACKER_BOOTSTRAP then
          require("packer").sync()
        end

end)
