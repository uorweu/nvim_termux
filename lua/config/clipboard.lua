-- vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- clipboard for  termux on android

vim.g.clipboard = {
  name = 'termux',
  copy = {
    ['+'] = 'termux-clipboard-set',
    ['*'] = 'termux-clipboard-set',
  },
  paste = {
    ['+'] = 'termux-clipboard-get',
    ['*'] = 'termux-clipboard-get',
  },
  cache_enabled = 1,
}
