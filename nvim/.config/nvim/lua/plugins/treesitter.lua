return {
    'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
    config = function()  
      local config_ts = require("nvim-treesitter.configs")
      config_ts.setup({
        ensure_installed = {"c", "lua", "javascript", "typescript"  , "rust", "python"},
        highlight = {enable = true},
        indent = { enable = true }
      })
  end
}
