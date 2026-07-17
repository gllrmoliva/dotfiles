return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      transparent = false,
      colors = {
        bg         = "#0c0b0c",
        dark_bg    = "#0c0b0c",
        darker_bg  = "#080708",
        lighter_bg = "#241F22",

        fg         = "#f1f1ef",
        dark_fg    = "#cfd3cd",
        light_fg   = "#d6d3de",
        bright_fg  = "#FAFCFB",
        muted      = "#949fa6",

        red        = "#e6604f",
        orange     = "#ea8160",
        yellow     = "#b4a4c4",
        green      = "#468A9B",
        cyan       = "#b59790",
        blue       = "#929fc8",
        purple     = "#8fb4bb",
        brown      = "#a29175",

        bright_red    = "#f08870",
        bright_yellow = "#c86f83",
        bright_green  = "#9aa393",
        bright_cyan   = "#a4cccc",
        bright_blue   = "#c4d8e2",
        bright_purple = "#b19be2",

        accent               = "#e2dddc",
        cursor               = "#f8faf9",
        foreground           = "#f6f7f5",
        background           = "#0d0c0d",
        selection            = "#584e51",
        selection_foreground = "#141112",
        selection_background = "#e8e3e2",
      },
      on_highlights = function(hl, c)
        hl.CursorLine = { bg = c.lighter_bg }
        hl.CursorLineNr = { fg = c.yellow, bold = true }
        hl.Visual = { bg = c.selection_background, fg = c.selection_foreground }
        hl.LspReferenceText = { bg = c.selection, fg = c.bright_fg }
        hl.LspReferenceRead = hl.LspReferenceText
        hl.LspReferenceWrite = hl.LspReferenceText
        hl.SnacksPickerDir         = { fg = c.muted }
        hl.SnacksPickerPathHidden  = { fg = c.muted }
        hl.SnacksPickerPathIgnored = { fg = c.muted }
        hl.SnacksPickerListCursorLine = { bg = c.lighter_bg }
      end,
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
