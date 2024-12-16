return {

  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },

  "github/copilot.vim",
  "eandrju/cellular-automaton.nvim",
  "gpanders/editorconfig.nvim",
  {
    { 'datsfilipe/vesper.nvim' },
  },
  {
    'boganworld/crackboard.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crackboard').setup({
        session_key = 'c078fa6a10df02cbf088ab4e3cb129e1f8e1d9d534be8275a7bf2ef1c6fa202a',
      })
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
}
