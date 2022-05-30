-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local pluginKeys = {}
local map = vim.api.nvim_set_keymap
local opt = {
  noremap = true,
  silent = true
}

map("n", "S", ":w<CR>", opt)
map("n", "Q", ":bdelete<CR>", opt)
map("n", "<leader>al<leader>", ":tabe<CR>", opt)
map("n", "<leader>sl<leader>", ":set splitright<CR>:vsplit<CR>", opt)

map("n", "E", ":-tabnext<CR>", opt)
map("n", "R", ":+tabnext<CR>", opt)

map("n", "<leader>ff<leader>", ":Telescope find_files<CR>", opt)
-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<TAB>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys
