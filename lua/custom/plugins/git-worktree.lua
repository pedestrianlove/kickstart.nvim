-- File: lua/cusom/plugins/git-worktree.lua

return {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("git-worktree").setup()
        require("telescope").load_extension("git_worktree")
        vim.api.nvim_set_keymap(
            "n",
            "<leader>st",
            ":Telescope git_worktree<CR>",
            { desc = '[S]earch git_work[T]rees', noremap=true }
        )
        vim.api.nvim_set_keymap(
            "n",
            "<leader>cr",
            ":Telescope git_worktree create_git_worktree<CR>",
            { desc = '[C]reate git_wo[R]ktree', noremap=true }
        )
    end,
}
