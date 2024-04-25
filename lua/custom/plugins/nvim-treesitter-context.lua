return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesitter-context').setup {
      enable = false,
    }

    vim.keymap.set('n', '<Esc>2', function()
      vim.cmd 'TSContextToggle'
    end, { desc = 'Toggle NvimTree sidebar.', noremap = true })
  end,
}
