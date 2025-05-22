return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- or "tabs" if you want tab-based
        diagnostics = 'nvim_lsp',
        separator_style = 'slant', -- or "thick", "thin", etc.
        show_close_icon = true,
        show_buffer_close_icons = true,
        numbers = 'ordinal',
      },
    }

    -- Keymaps to cycle buffers
    -- vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
    -- vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })

    vim.keymap.set('n', '<leader><Tab>', '<cmd>buffer#<CR>', { desc = 'Toggle last two buffers' })
    -- Optional: go to buffer by number (1-9)
    -- for i = 1, 9 do
    --   vim.keymap.set('n', '<leader>' .. i, function()
    --     require('bufferline').go_to_buffer(i)
    --   end, { desc = 'Go to buffer ' .. i })
    -- end
  end,
}
