function ColorMyPencils(color)
  color = color or "gruber-darker"
  vim.cmd.colorscheme(color)
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  local hl_groups = vim.api.nvim_get_hl(0, {})

  for key, hl_group in pairs(hl_groups) do
    if hl_group.italic then
      vim.api.nvim_set_hl(0, key, vim.tbl_extend("force", hl_group, { italic = false }))
    end
  end
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        disable_background = true,
      })
    end
  },
  {
    "blazkowolf/gruber-darker.nvim",
    name = "gruber-darker",
    italic = false,
    config = function()
      ColorMyPencils("gruber-darker")
    end
  }

}
