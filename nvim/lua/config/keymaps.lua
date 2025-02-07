local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Save dan Quit
map("n", "<Leader>w", ":w<CR>", opts) -- Simpan file
map("n", "<Leader>q", ":q<CR>", opts) -- Keluar file
map("n", "<Leader>x", ":x<CR>", opts) -- Simpan dan keluar

-- Navigasi Split
map("n", "<C-h>", "<C-w>h", opts) -- Pindah ke kiri
map("n", "<C-l>", "<C-w>l", opts) -- Pindah ke kanan
map("n", "<C-j>", "<C-w>j", opts) -- Pindah ke bawah
map("n", "<C-k>", "<C-w>k", opts) -- Pindah ke atas

-- Resize Split
map("n", "<Leader>+", ":resize +2<CR>", opts)
map("n", "<Leader>-", ":resize -2<CR>", opts)
map("n", "<Leader><", ":vertical resize -2<CR>", opts)
map("n", "<Leader>>", ":vertical resize +2<CR>", opts)

-- Run code
map("n", "<Leader>r", ":RunCode<CR>", opts) -- Jalankan kode

-- Switch file or workspace
map("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Next Tab", noremap = true, silent = true })
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Previous Tab", noremap = true. silent = true })

-- Toggle workspace
map("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
