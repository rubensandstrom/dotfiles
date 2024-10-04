local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("BufRead", {
	group = vim.api.nvim_create_augroup("detect_gitconfig", { clear = true }),
	-- desc = 'Set filetype for gitconfig-* files',
	pattern = { "*.inc" },
	callback = function()
		vim.cmd("set filetype=asm")
	end,
})

vim.api.nvim_create_autocmd("BufRead", {
	group = vim.api.nvim_create_augroup("detect_gitconfig", { clear = true }),
	-- desc = 'Set filetype for gitconfig-* files',
	pattern = { "*.v" },
	callback = function()
		vim.cmd("set filetype=verilog")
	end,
})

require("options")
require("keymaps")
require("lazy").setup("plugins")

