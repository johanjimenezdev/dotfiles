local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement ---------------------------------------
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Disable continuations -------------------------------------
keymap.set("n", "<leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<leader>O", "O<Esc>^Da", opts)

-- Tabs ------------------------------------------------------
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

-- Start and end of a line -----------------------------------
keymap.set({ "n", "v" }, "H", "^")
keymap.set({ "n", "v" }, "L", "$")

-- Move lines ------------------------------------------------
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Indentation -----------------------------------------------
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Disable highlight -----------------------------------------
keymap.set("n", "<Esc>", "<cmd>noh<CR>")
