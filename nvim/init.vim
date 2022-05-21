lua require('basic')

lua require('plugins')

lua require('keybindings')

lua require('plugins')

lua require('plugin-config/treesitter')
lua require('plugin-config/lualine')
lua require('plugin-config/bufferline')
lua require('plugin-config/indent')
lua require('plugin-config/signature')
lua require('plugin-config/comment')

lua require('lsp/setup')
lua require('lsp/nvim-cmp')

set background=dark
colorscheme kanagawa

hi clear signcolumn

