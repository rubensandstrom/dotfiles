local options = {
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,

	termguicolors = true,

	number = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
