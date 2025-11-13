vim.opt.showmatch = true            -- mostrar coincidencias
vim.opt.hlsearch = true             -- resaltar resultados de búsqueda
vim.opt.incsearch = true            -- búsqueda incremental
vim.opt.tabstop = 4                 -- número de columnas por tab
vim.opt.softtabstop = 4             -- retroceso respeta espacios como tabs
vim.opt.shiftwidth = 4              -- ancho de indentación automática
vim.opt.autoindent = true           -- nueva línea hereda indentación
vim.opt.number = true               -- mostrar números de línea
vim.opt.colorcolumn = "80"         -- columna de referencia en 100
vim.cmd("filetype plugin indent on") -- activación de indentado por tipo de archivo
vim.cmd("syntax on")                -- resaltar sintaxis 
vim.opt.mouse = "a"                 -- habilitar ratón 
vim.opt.clipboard = "unnamedplus"   -- usar portapapeles del sistema
vim.cmd("filetype plugin on")       -- plugins por tipo de archivo
vim.opt.cursorline = true           -- resaltar línea del cursor
vim.opt.ttyfast = true              -- desplazamiento más rápido
vim.opt.expandtab = true            -- convertir tabs a espacios
vim.g.mapleader = " "               -- Leader key
vim.g.maplocalleader = " "          -- Leader key
vim.g.loaded_netrw = 1              -- disable netrw at the very start of your init.lua this is for Nvimtree
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true        -- optionally enable 24-bit colour

local function bootstrap_pckr() local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
	"nvim-treesitter/nvim-treesitter",              --sintax color
	"nvim-tree/nvim-tree.lua",                      --archivos
    "nvim-tree/nvim-web-devicons",                  --iconos
    "nvim-lua/plenary.nvim",                        --dependencia telescope
    "nvim-telescope/telescope.nvim",                --selección de buffer
    "nvim-lualine/lualine.nvim",                    --linea de abajo más bonita
    "catppuccin/nvim",                              --colorscheme
    "lewis6991/gitsigns.nvim",                      --merge en git
    "goolord/alpha-nvim",                           --greeter (homepage)
    "echasnovski/mini.icons",                       --dependencia alpha-nvim
    "meatballs/notebook.nvim",                      --visualizador de ipynb
    "akinsho/bufferline.nvim",                      --buffers arriba
    "MeanderingProgrammer/render-markdown.nvim",    -- markdown
    "lukas-reineke/indent-blankline.nvim",          -- lineas en scopes
    "RRethy/vim-illuminate",                        -- iluminar variables con mismo nombre
    "mason-org/mason.nvim",                         -- LSP
    "neovim/nvim-lspconfig",                        -- LSP
    "mason-org/mason-lspconfig.nvim"                -- LSP
}

require("plugins.telescope")
require("plugins.lualine")
require("plugins.catppuccin")
require("plugins.gitsigns")
require("plugins.nvimtree")
require("plugins.treesitter")
require("plugins.illuminate")

require'alpha'.setup(require'alpha.themes.startify'.config)
require('notebook').setup()
require("bufferline").setup{}
require("ibl").setup()

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright", "ts_ls" },
})
require("plugins.lspconfig")
-- Para actualizar :Pckr sync
