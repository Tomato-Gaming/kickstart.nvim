-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load lazy.nvim and define custom plugins
require("lazy").setup({
    -- Add your plugins here
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false, -- Load immediately
        priority = 1000, -- High priority so it's loaded first
        config = function()
            vim.cmd("colorscheme cyberdream") -- Set the colorscheme
        end,
    },

    -- Add more custom plugins below
})

