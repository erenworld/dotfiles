`options.lua` est la config des options. 
Pour que Neovim les prenne en compte. Nous devons charger le fichier `options.lua`.
Nous allons transformer notre `core` en modèle Lua. Pour ce faire Lua a besoin d'un fichier `init.lua` qu'il chargera automatiquement à la racine.

Neovim charge par défaut ~/.config/nvim/init.lua qui lui-même charge ~/.config/nvim/lua/core/init.lua (grâce au require("core")) qui va ensuite charger ~/.config/nvim/lua/core/options.lua (grâce au require("core.options")).

## Raccourcis clavier
`core/keymaps.lua`


