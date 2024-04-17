return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'olimorris/neotest-phpunit',
  },
  config = function()
    require('neotest').setup {

      adapters = {
        require 'neotest-phpunit' {
          filter_dirs = { '.git', 'node_modules', 'vendor' },
        },
      },
    }

    vim.keymap.set('n', '<leader>tn', function()
      require('neotest').run.run()
    end)
    vim.keymap.set('n', '<leader>tf', function()
      require('neotest').run.run(vim.fn.expand '%')
    end)
  end,
}
