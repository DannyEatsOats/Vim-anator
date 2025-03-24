return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = { 'rose-pine', 'zenbones', 'miasma', 'catppuccin', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-moon' },
      livePreview = true,
    }
  end,
  vim.keymap.set('n', '<leader>tt', ':Themery<CR>', { desc = '[Th]eme Picker' }),
}
