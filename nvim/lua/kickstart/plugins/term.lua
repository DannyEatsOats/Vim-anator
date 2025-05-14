return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        -- Terminal settings
        size = 8, -- Default size for horizontal terminals
        open_mapping = [[<C-t>]], -- Toggle terminal with Ctrl+T
        shade_terminals = true,
        shading_factor = 2,
        direction = 'horizontal', -- Set default to horizontal
        start_in_insert = true, -- Start terminal in insert mode
        persist_size = true,
        close_on_exit = true,
        shell = vim.o.shell, -- Use the default shell
      }

      -- Keymaps for better usability
      vim.keymap.set('n', '<C-t>', '<Cmd>ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
    end,
  },
}
