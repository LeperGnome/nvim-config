local options = {
	number = true,
	statuscolumn = "%s %3l %2r │ ",
	ruler = true,
	relativenumber = true,
	mouse = "a",
	showmode = false,
	clipboard = "unnamedplus",
	breakindent = true,
	undofile = true,
	ignorecase = true,
	smartcase = true,
	signcolumn = "auto",
	updatetime = 250,
	timeoutlen = 300,
	splitright = true,
	splitbelow = true,
	inccommand = "split",
	cursorline = false,
	scrolloff = 10,
	textwidth = 0,
	wrapmargin = 0,
	wrap = true,
	formatoptions = "tcqrn1",
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	hlsearch = true,
	termguicolors = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
