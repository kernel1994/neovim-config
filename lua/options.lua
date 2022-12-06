vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = v
vim.opt.wrap = true
vim.opt.scrolloff = 11
vim.opt.sidescrolloff = 11
vim.opt.showmode = true
vim.opt.fileencoding = 'utf-8'
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.showtabline = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars = 'eol:↵,trail:·,tab:>-,nbsp:␣'

-- :h last-position-jump
vim.cmd [[
    autocmd BufRead * autocmd FileType <buffer> ++once
    \ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif
]]

require('mini.cursorword').setup()
require('mini.comment').setup()

require('toggleterm').setup{}
require('nvim-surround').setup{}
require'lspconfig'.pylsp.setup{}
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
}

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = 'smart_case',        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        frecency = {
            show_scores = true,
        }
    }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('frecency')

vim.g.vim_monokai_tasty_italic = 1
vim.cmd[[colorscheme vim-monokai-tasty]]
