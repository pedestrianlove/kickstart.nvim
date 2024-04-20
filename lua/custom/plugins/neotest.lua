return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'olimorris/neotest-phpunit',
    'nvim-neotest/neotest-go',
  },
  config = function()
    require('neotest').setup {

      adapters = {
        require 'neotest-phpunit' {
          filter_dirs = { '.git', 'node_modules', 'vendor' },
        },
        require 'neotest-go',
      },
    }

    vim.keymap.set('n', '<leader>tn', function()
      require('neotest').run.run()
    end, { noremap = true, desc = '[T]est the [N]earest.' })
    vim.keymap.set('n', '<leader>tf', function()
      require('neotest').run.run(vim.fn.expand '%')
      require('neotest').summary.open()
    end, { noremap = true, desc = '[T]est the current [F]ile.' })
  end,
}
