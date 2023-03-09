HOME = os.getenv("HOME")

vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

-- basic settings
vim.o.encoding = "utf-8"
vim.o.backspace = "indent,eol,start" -- backspace works on every char in insert mode
vim.o.completeopt = 'menuone,noselect'
vim.o.history = 1000
vim.o.dictionary = '/usr/share/dict/words'
vim.o.startofline = true

-- Mapping waiting time
vim.o.timeout = false
vim.o.ttimeout = true
vim.o.ttimeoutlen = 100

-- Display
vim.o.showmatch  = true -- show matching brackets
vim.o.scrolloff = 3 -- always show 3 rows from edge of the screen
vim.o.synmaxcol = 300 -- stop syntax highlight after x lines for performance
vim.o.laststatus = 2 -- always show status line

vim.o.list = false -- do not display white characters
vim.o.foldenable = false
vim.o.foldlevel = 4 -- limit folding to 4 levels
vim.o.foldmethod = 'syntax' -- use language syntax to generate folds
vim.o.wrap = false --do not wrap lines even if very long
vim.o.eol = false -- show if there's no eol char
vim.o.showbreak= '↪' -- character to show when line is broken

-- Sidebar
vim.o.number = true -- line number on the left
vim.o.relativenumber = true
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = 'yes' -- keep 1 column for coc.vim  check
vim.o.modelines = 0
vim.o.showcmd = true -- display command in bottom bar

-- Search
vim.o.incsearch = true -- starts searching as soon as typing, without enter needed
vim.o.ignorecase = true -- ignore letter case when searching
vim.o.smartcase = true -- case insentive unless capitals used in search

vim.o.matchtime = 2 -- delay before showing matching paren
vim.o.mps = vim.o.mps .. ",<:>"

-- White characters
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 2 -- 1 tab = 2 spaces
vim.o.shiftwidth = 2 -- indentation rule
vim.o.formatoptions = 'qnj1' -- q  - comment formatting; n - numbered lists; j - remove comment when joining lines; 1 - don't break after one-letter word
vim.o.expandtab = true -- expand tab to spaces

-- Backup files
vim.o.backup = true -- use backup files
vim.o.writebackup = false
vim.o.swapfile = false -- do not use swap file
vim.o.undodir = HOME .. '/.vim/tmp/undo//'     -- undo files
vim.o.backupdir = HOME .. '/.vim/tmp/backup//' -- backups
vim.o.directory = '/.vim/tmp/swap//'   -- swap files


--require('github-theme').setup()


vim.o.background = 'light'
vim.cmd('colors slightlyclownish') 




vim.keymap.set('n', '<Leader>m', ':bn<CR>')
vim.keymap.set('n', '<Leader>n', ':bp<CR>')

vim.keymap.set('n', '<Leader>l', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<Leader>R', ':NvimTreeRefresh<CR>')

vim.keymap.set('n', '<Leader>du', ':lua require(\'dapui\').toggle()<CR>')
vim.keymap.set('n', '<Leader>db', ':lua require(\'dap\').toggle_breakpoint()<CR>')
vim.keymap.set('n', '<Leader>dc', ':lua require\'dap\'.continue()<CR>')
vim.keymap.set('n', '<Leader>do', ':lua require\'dap\'.step_over()<CR>')
vim.keymap.set('n', '<Leader>di', ':lua require\'dap\'.step_into()<CR>')
vim.keymap.set('n', '<Leader>dx', ':lua require\'dap\'.terminate()<CR>')
vim.keymap.set('n', '<Leader>dl', ':lua require\'dap\'.run_last()<CR>')
vim.keymap.set('n', '<Leader>dr', ':lua require(\'dap.ext.vscode\').load_launchjs()<CR>')
vim.keymap.set('n', '<Leader>tt', ':FloatermToggle<CR>')
vim.keymap.set('n', '<Leader>tn', ':FloatermNew<CR>')
vim.keymap.set('n', '<Leader>tl', ':FloatermNext<CR>')
vim.keymap.set('n', '<Leader>th', ':FloatermPrev<CR>')
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set('n', '<Leader>xx', ':bd!<CR>')
vim.keymap.set('n', '<Leader>xd', 'ggvGd')
vim.keymap.set('n', '<Leader>`', ':PackerSync<CR>')
vim.keymap.set('n', '<Leader>(', ':e ~/.config/nvim/lua/plugins.lua<CR>')
vim.keymap.set('n', '<Leader>)', ':e ~/.config/nvim/lua/settings.lua<CR>')
vim.keymap.set('n', '<Leader>>', ':<C-w-w>')
vim.keymap.set('n', '<Leader>q', ':qa!<CR>')
vim.keymap.set('n', '<Leader>rr', ':RustRunnables<CR>')
vim.keymap.set('n', '<Leader>rd', ':RustDebuggables<CR>')
vim.keymap.set('n', '<Leader>rc', ':RustOpenCargo<CR>')
vim.keymap.set('n', '<Leader>ga', ':GoCodeLenAct<CR>')
vim.keymap.set('n', '<Leader>gt', ':GoTestFunc<CR>')
vim.keymap.set('n', '<Leader>gd', ':GoDebug<CR>')
vim.keymap.set('n', '<Leader>ge', ':GoIfErr<CR>')
vim.keymap.set('n', '<Leader>z', ':e ~/.zshrc<CR>')

local rt = require("rust-tools")
--local extension_path = HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.8.1'
----local codelldb_path = extension_path .. '/adapter/codelldb'
--local liblldb_path = extension_path .. '/lldb/lib/liblldb.dylib'  -- MacOS: This may be .dylib
--local codelldb_path = '/Users/andrei/.local/share/nvim/mason/bin/codelldb'





vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


require("mason").setup()


-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  }
})


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('go').setup()
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
require('go').setup({
  -- other setups ....
  lsp_cfg = {
    capabilities = capabilities,
    -- other setups
  },
})

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})



require'lspconfig'.pyright.setup{}
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
vim.cmd([['
nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>

tnoremap   <silent>   <Leader>tt   <C-\><C-n>:FloatermToggle<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
let g:floaterm_position='center'
let g:rustfmt_autosave = 1
'
]])

--require('dap-python').test_runner = 'pytest'
require("dapui").setup()

local dap = require('dap')


local mason_registry = require("mason-registry")

local codelldb_root = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
local codelldb_path = codelldb_root .. "adapter/codelldb"
local liblldb_path = codelldb_root .. "lldb/lib/liblldb.dylib"
print(codelldb_path)
--dap.adapters.rust = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)



dap.adapters.codelldb = {
  type = 'server',
  host = '127.0.0.1',
  port = 13000
}

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },

  --dap = {adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)}
  dap = {
      adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
    }

  
})



dap.adapters.go = {
  type = 'executable';
  command = 'node';
  args = {os.getenv('HOME') .. '/code/third_party/vscode-go/dist/debugAdapter.js'};
}

dap.adapters.python = {
  type = 'executable';
  command = '/Users/andrei/.virtualenvs/debugpy/bin/python';
  args = { '-m', 'debugpy.adapter' };
}

dap.adapters.lldb = {
  type = 'executable',
  command = '/opt/homebrew/opt/llvm/bin/lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}
--dap.adapters.codelldb = {
  --name='codelldb',
  --type = 'server',
  --port = "${port}",
  --executable = {
    ---- CHANGE THIS to your path!
    --command ='/Users/andrei/.local/share/nvim/mason/bin/codelldb', 
    --args = {"--port", "${port}"},

    ---- On windows you may have to uncomment this:
    ---- detached = false,
  --}
--}

dap.configurations.go = {
  {
    type = 'go';
    name = 'Debug';
    request = 'launch';
    showLog = false;
    program = "${file}";
    dlvToolPath = vim.fn.exepath('dlv')  -- Adjust to where delve is installed
  },
}

dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}"; -- This configuration will launch the current file if used.
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      local cwd = vim.fn.getcwd()
      if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
        return cwd .. '/venv/bin/python'
      elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
        return cwd .. '/.venv/bin/python'
      else
        return '/usr/bin/python3' 
      end
    end;
  },
}


--dap.configurations.cpp = {
  --{
    --name = 'Launch',
    --type = 'codelldb',
    --request = 'launch',
    --program = function()
      --return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --end,
    --cwd = '${workspaceFolder}',
    --stopOnEntry = false,
    --args = {},

    ---- 💀
    ---- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    ----
    ----    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    ----
    ---- Otherwise you might get the following error:
    ----
    ----    Error on launch: Failed to attach to the target process
    ----
    ---- But you should be aware of the implications:
    ---- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    ---- runInTerminal = false,
  --},
--}

---- If you want to use this for Rust and C, add something like this:

--dap.configurations.c = dap.configurations.cpp
--dap.configurations.rust = dap.configurations.cpp

require("nvim-dap-virtual-text").setup()
require('gitsigns').setup()


local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)





require("gruvbox").setup({contrast = "hard"})
