-- treesitter-context.lua
return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = 'BufReadPost',
  opts = {
    enable = true, -- Enable this plugin (Can be toggled later)
    max_lines = 4, -- How many lines the context window can show
    trim_scope = 'outer', -- Which context to prioritize
    mode = 'cursor', -- Show context where cursor is
  },
}
