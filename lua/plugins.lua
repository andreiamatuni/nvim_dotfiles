-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'

    -- Debugging
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'theHamsta/nvim-dap-virtual-text'

    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'
    use "rafamadriz/friendly-snippets"

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })


    use 'rust-lang/rust.vim'


 
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'

    use 'tpope/vim-surround'
    use 'preservim/nerdcommenter'
    use 'voldikss/vim-floaterm'
    use {
      "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'tpope/vim-fugitive'
    use {
      'lewis6991/gitsigns.nvim',
      -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
      }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }    
    
    use {
      'kdheepak/tabline.nvim',
      config = function()
        require'tabline'.setup {
          -- Defaults configuration options
          enable = true,
          options = {
          -- If lualine is installed tabline will use separators configured in lualine by default.
          -- These options can be used to override those settings.
            section_separators = {'', ''},
            component_separators = {'', ''},
            max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
            show_tabs_always = true, -- this shows tabs only when there are more than one tab or if the first tab is named
            show_devicons = true, -- this shows devicons in buffer section
            show_bufnr = false, -- this appends [bufnr] to buffer section,
            show_filename_only = false, -- shows base filename only instead of relative path in filename
            modified_icon = "+ ", -- change the default modified icon
            modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
            show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
          }
        }
        vim.cmd[[
          set guioptions-=e " Use showtabline in gui vim
          set sessionoptions+=tabpages,globals " store tabpages and globals in session
        ]]
      end,
      requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
    }
    
    --use 'nvim-tree/nvim-web-devicons'
    
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'
    
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'} }
    }

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use 'mfussenegger/nvim-dap-python'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
      }

    -- Themes
    use 'ellisonleao/gruvbox.nvim' 
    use 'lourenci/github-colors'
    use 'sainnhe/everforest'
    use 'nvim-tree/nvim-web-devicons'
    use 'aktersnurra/no-clown-fiesta.nvim' 
    use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
    use 'sainnhe/edge'
    use "https://gitlab.com/yorickpeterse/vim-paper"
    use 'savq/melange-nvim'

    use "EdenEast/nightfox.nvim"
    use 'https://gitlab.com/protesilaos/tempus-themes-vim'
    use 'AlexvZyl/nordic.nvim'
    --use({
    --'rose-pine/neovim',
    --as = 'rose-pine',
    --config = function()
        --require("rose-pine").setup()
        --vim.cmd('colorscheme rose-pine')
    --end
    --}) 
    use 'ajmwagar/vim-deus'
    use 'jacoborus/tender.vim'
    use '~/.config/nvim/myPlugins/slightlyclownish.nvim'
end)


