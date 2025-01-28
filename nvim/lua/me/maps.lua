vim.g.mapleader = " "

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

local km = vim.keymap

-- telescope
km.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "find in cwd"})
km.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "grep files" })
km.set("n", "<leader>fb", "<CMD>lua require('telescope.builtin').buffers({sort_mru = true, ignore_current_buffer = true})<CR>", { desc = "find in buffers" })
km.set("n", "<leader>fo", "<CMD>lua require('telescope.builtin').oldfiles({})<CR>", { desc = "find in old files" })

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>q", "<CMD>Neotree focus<CR>")

-- New Windows
map("n", "<leader>o", "<CMD>vsplit<CR>")
map("n", "<leader>p", "<CMD>split<CR>")

-- smooth scrolling
map("n", "<C-U>", "<C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>")
map("n", "<C-D>", "<C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>")

-- neotest
km.set("n", "<leader>t", "<CMD>lua require('neotest').run.run()<CR>", { desc = "run test" })

-- lsp
km.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "rename" })
km.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "hover" })

-- buffers
map("n", "<Tab>", "<CMD>bnext<CR>")
map("n", "<S-Tab>", "<CMD>bprev<CR>")
map("n", "<leader>bd", "<CMD>%bd|e#<CR>")
