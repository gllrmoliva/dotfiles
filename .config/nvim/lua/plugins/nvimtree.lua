-- Atajo global para abrir/cerrar NvimTree con <leader>e
require("nvim-tree").setup({
  on_attach = function(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return {
        desc = "nvim-tree: " .. desc,
        buffer = bufnr,
        noremap = true,
        silent = true,
        nowait = true
      }
    end

    -- Mapeos por defecto
    api.config.mappings.default_on_attach(bufnr)

    local function open_and_close()
      api.node.open.edit()
      api.tree.close()
    end

    -- Enter
    -- vim.keymap.set("n", "<CR>", open_and_close, opts("Abrir archivo y cerrar NvimTree"))
  end
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Abrir/cerrar NvimTree" })
