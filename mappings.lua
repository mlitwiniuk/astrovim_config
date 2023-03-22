-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<leader><leader>h"] = { function() require("smart-splits").swap_buf_left() end, desc = "Swap windows left" },
    ["<leader><leader>j"] = { function() require("smart-splits").swap_buf_up() end, desc = "Swap windows up" },
    ["<leader><leader>k"] = { function() require("smart-splits").swap_buf_down() end, desc = "Swap windows down" },
    ["<leader><leader>l"] = { function() require("smart-splits").swap_buf_right() end, desc = "Swap windows right" }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
