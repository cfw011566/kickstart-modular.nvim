-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
if false then
  return {}
end
return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = {
      ensure_installed = { 'zig', 'c', 'cpp', 'go' },
    },
  },
  {
    'neovim/nvim-lspconfig',
    -- https://www.lazyvim.org/plugins/lsp
    opts = {
      inlay_hints = {
        enabled = true,
        exclude = { 'zig', 'c' },
      },
      servers = {
        zls = {
          -- mason = false and cmd not working, we have to modify ~/.local/share/nvim/mason/bin/zls to use latest zls
          mason = false, -- user lastest zls on github
          cmd = { '/Users/cfw/.local/bin/zls' },
          filetypes = { 'zig', 'zon' },
          settings = {
            zls = {
              enable_snippets = true,
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              ['ui.inlayhint.hints'] = {
                compositeLiteralFields = true,
                constantValues = true,
                parameterNames = true,
              },
            },
          },
        },
      },
    },
  },
}
