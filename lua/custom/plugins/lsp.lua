return {
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      omnisharp = {
        enable_editorconfig_support = true,
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
        enable_import_completion = true,
      },
      -- Python language server
      pyright = {},
    },
  },
}
