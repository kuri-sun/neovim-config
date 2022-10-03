-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup({

    function(use)
        
        ---------------------
        -- Package Manager --
        ---------------------

        use 'wbthomason/packer.nvim'

        ----------------------------------------
        -- Theme, Icons, Statusbar, Bufferbar --
        ----------------------------------------

        use 'folke/tokyonight.nvim'
    

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
        use 'airblade/vim-gitgutter'

    end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end,
        },
    },
})
