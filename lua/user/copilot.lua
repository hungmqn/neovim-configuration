vim.g.copilot_filetypes = { xml = false }
-- vim.g.copilot_filetypes = { ["*"] = false, javascript = true }


-- local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.g.copilot_no_tab_map = true
vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("<CR>")]] -- Accept suggestion
-- keymap("i", "<C-a>", ":copilot#Accept('\\<CR>')", { silent = true, expr = true } ) -- Accept suggestion -- THIS DOES NOT WORK 
-- keymap("i", "<C-c>", "<Plug>(copilot-dismiss)", { silent = true, expr = true } ) -- Dismiss suggestion
-- keymap("i", "<A-]>", "<Plug>(copilot-next)", { silent = true, expr = true } ) -- Next suggestion
-- keymap("i", "<A-[>", "<Plug>(copilot-previous)", { silent = true, expr = true } ) -- Previous suggestion

vim.cmd[[highlight CopilotSuggestion guifg=#ccbbaa ctermfg=8]]

-- C = Control - Ctrl
-- A = Alternative - Alt 
-- S = Shift
-- CR = Enter

-- Normal --
-- Copilot commands
-- keymap("n", "g<C-h>", ":Copilot help<CR>", opts)
-- keymap("n", "g<C-e>", ":Copilot enable<CR>", opts)
-- keymap("n", "g<C-d>", ":Copilot disable<CR>", opts)
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
-- keymap("n", "<C-Up>", ":resize -2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
-- keymap("n", "<S-l>", ":bnext<CR>", opts)
-- keymap("n", "<S-h>", ":bprevious<CR>", opts)
