local opt = vim.opt

opt.relativenumber = true -- affiche les lignes relativement au curseur
opt.number = true -- affiche le vrai numéro de la ligne
opt.tabstop = 2 -- combien d'espaces vaut une tabulation visuellement
opt.shiftwidth = 2 -- combien d'espaces ajouter quand on indente
opt.expandtab = true -- tab -> neovim insère des espaces
opt.autoindent = true -- conserve l'indentation précédente
opt.ignorecase = true -- ignore la casse dans les recherches
opt.smartcase = true -- réactive la casse si j'utilise une majuscule
opt.hlsearch = true -- surligne toutes les occurences trouvées après une recherche
opt.cursorline = true -- surligne la ligne où se trouve le curseur
opt.termguicolors = true -- 24 bits colors
opt.background = "dark" -- theme
opt.signcolumn = "yes" -- Affiche toujours une colonne à gauche pour les signes : erreurs LSP, warnings, Git changes, breakpoints
opt.backspace = "indent,eol,start" -- Permet à Backspace de supprimer l’indentation, les retours à la ligne, et les caractères avant le début de l’insertion.
opt.clipboard = "unnamedplus" -- press papier système
opt.splitright = true -- split vertical
opt.splitbelow = true -- split horizontal
opt.swapfile = false -- forget .swp files
opt.undofile = true -- undo infini
opt.iskeyword:append("-") -- on traite les mots avec des - comme un seul mot
opt.list = true -- affiche les caractères invisibles
opt.listchars:append({ -- personnalise les caractères spéciaux
  nbsp = "␣",
  trail = "•",
  precedes = "«",
  extends = "»",
  tab = "> "
})
