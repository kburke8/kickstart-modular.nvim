local venv_path = os.getenv 'HOME' .. '/.venvs/nvim/bin/'

return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      cs = { 'csharpier' },
      python = { 'black', 'ruff_format' },
    },
    formatters = {
      csharpier = {
        command = '/home/<your-user>/.dotnet/tools/csharpier',
        args = { '--write-stdout' },
        stdin = true,
      },
      black = {
        command = venv_path .. 'black',
        args = { '-' },
        stdin = true,
      },
      ruff_format = {
        command = venv_path .. 'ruff',
        args = { 'format', '-' },
        stdin = true,
      },
    },
  },
}
