vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set guicursor=n-c:block-Cursor,v:block-vCursor,i-ci:ver75-block,o-r:hor5")
vim.cmd("let g:rust_recommended_style = 0")
vim.opt.number = true
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("highlight EndOfBuffer guifg=bg")
	end,
})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>',{})
vim.keymap.set('n', '<leader>nt', ':Neotree filesystem reveal left toggle<CR>' ,{})
vim.cmd.colorscheme "the_uncanny_valley"
