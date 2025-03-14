return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "rose-pine",
        component_separators = "|",
        section_separators = "",
        disabled_filetypes = { "NeoTree" },
      },
    })
  end,
}
