vim.g.mapleader = " "
vim.g.maplocalleader = " "
  
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

vim.keymap.set("n", "<leader>n", "<Cmd>Neotree toggle<CR>")
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
