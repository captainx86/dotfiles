local opt = vim.opt
vim.cmd([[
set wrap linebreak nolist
set colorcolumn=80
highlight ColorColumn guibg=Violet
set foldmethod=indent
set nofoldenable
set number
set relativenumber
set autoread
]])

opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches
