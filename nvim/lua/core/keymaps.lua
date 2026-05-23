vim.g.mapleader = " " -- leader sera SPACE
local keymap = vim.keymap.set -- raccourci pour la fonction set

keymap("i", ";;", "<ESC>", { desc = "Sortir du mode insertion avec ;;" })

keymap("n", "<leader>nh", ":nohl<CR>", {
  desc = "Effacer le surlignage de la recherche"
})

keymap("v", "<S-i>", ":m .-2<CR>==", {
  desc = "Déplace le texte sélectionné vers le haut"
})

keymap("v", "<S-k>", ":m .+1<CR>==", {
  desc = "Déplace le texte sélectionné vers le bas"
})

keymap("x", "<S-i>", ":move '<-2<CR>gv-gv", {
  desc = "Déplace le texte sélectionné vers le haut en mode visuel bloc"
})

keymap("x", "<S-k>", ":move '>+1<CR>gv-gv", {
  desc = "Déplace le texte sélectionné vers le bas"
})

keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })

keymap("n", "<leader>sv", "<C-w>v", { desc = "Vertical split" })

keymap("n", "<leader>sh", "<C-w>s", { desc = "Horizontal split" })

-- Changement de fenêtre avec Ctrl + déplacement uniquement au lieu de Ctrl-w + déplacement
keymap("n", "<C-h>", "<C-w>h", { desc = "Déplace le curseur dans la fenêtre de gauche" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Déplace le curseur dans la fenêtre du bas" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Déplace le curseur dans la fenêtre du haut" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Déplace le curseur dans la fenêtre droite" })

-- compilation
keymap("n", "<leader>mc", "<cmd>!make<CR>") -- C
keymap("n", "<leader>rc", "<cmd>!cargo build<CR>") -- Rust

-- terminal 
keymap("n", "<leader>t", "<cmd>terminal<CR>")

-- Bufferline
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
