--  _  __
-- | |/ /
-- | ' / ___ _   _ _ __ ___   __ _ _ __  ___
-- |  < / _ \ | | | '_ ` _ \ / _` | '_ \/ __|
-- | . \  __/ |_| | | | | | | (_| | |_) \__ \
-- |_|\_\___|\__, |_| |_| |_|\__,_| .__/|___/
--            __/ |               | |
--           |___/                |_|

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-------------------------------------------

-- +--------+
-- | Normal |
-- +--------+
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 15<cr>", opts) -- explorer

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>lb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>ch", "<cmd>Telescope command_history<cr>", opts)
keymap("n", "<leader>bf", "<cmd>Telescope current_buffer_fuzzy_find	<cr>", opts)
keymap("n", "<leader>dg", "<cmd>Telescope diagnostics<cr>", opts)

-- git
keymap("n", "<leader>gc", "<cmd>Telescope git_commits	<cr>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status	<cr>", opts)
keymap("n", "<leader>gb", "<cmd>Telescope git_branches	<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Toggle_term
keymap("n", "<leader>cli", "<cmd>ToggleTerm<cr>", opts)

-- LSP
keymap("n", "<C-f>", "<cmd>lua vim.lsp.buf.format({bufnr = 0})<cr>", opts)

-- Iluminate
keymap('n', '<a-n>', '<cmd>lua require"illuminate".next_reference{wrap=true}<cr>', opts)
keymap('n', '<a-p>', '<cmd>lua require"illuminate".next_reference{reverse=true,wrap=true}<cr>', opts)

-------------------------------------------

-- +--------+
-- | Insert |
-- +--------+

-------------------------------------------

-- +--------+
-- | Visual |
-- +--------+

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-------------------------------------------

-- +--------------+
-- | Visual Block |
-- +--------------+

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-------------------------------------------

-- +----------+
-- | Terminal |
-- +----------+
--
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-------------------------------------------
