-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
--
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup {
    extensions = {
        file_browser = {
            initial_mode = "normal",
            prompt_prefix = "$ ",
            selection_caret = "-> ",
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ['-'] = fb_actions.backspace,
                    ['%'] = fb_actions.create
                },
            },
        },
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

-- open file_browser with the path of the current buffer
-- vim.api.nvim_set_keymap(
--   "n",
--   "<space>pv",
--   ":Telescope file_browser path=%:p:h select_buffer=true",
--   { noremap = true }
-- )

vim.keymap.set('n', '<leader>pv', function()
    vim.cmd(":Telescope file_browser path=%:p:h select_buffer=true")
end)
