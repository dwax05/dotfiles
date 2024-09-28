-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Custom Settings
-- vim.opt.autochdir = true
vim.g.startup_bookmarks = {
  -- ['C'] = "/Users/dylanwax/Library/Mobile Documents/iCloud~md~obsidian/Documents/Dylan's Idea Galaxy/COP2332/Code",
  ['C'] = "~/Workspace/Dylan's Idea Galaxy/COP2332/Code",
}

vim.keymap.set('n', '<leader>pv', '<cmd>Ex<CR>', { desc = 'Open Ex Browser' })
vim.keymap.set('n', '<leader>cf', '<cmd>cd %:h <CR>', { desc = 'Set File Location As Working Dir' })
vim.keymap.set('n', '<leader>gx', '<cmd>:! open .<CR><CR>', { desc = 'Open current directory in Finder' })

-- ToggleTerm Config
vim.keymap.set('n', '<leader>tt', '<cmd>:ToggleTerm size=10<CR>', { desc = 'Toggle Term' })
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd 'autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()'

return {
  {
    'startup-nvim/startup.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-file-browser.nvim' },
    config = function()
      require('startup').setup { theme = 'Startify' }
    end,
  },
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  { 'ThePrimeagen/vim-be-good' },
}
