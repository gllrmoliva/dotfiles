local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python" },
  
  -- Install parsers synchronously
  sync_install = true,
  
  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
