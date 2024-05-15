-- Toggle Term --
require("toggleterm").setup{ }
    
-- LazyGit
vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

function _lazygit_toggle()
    local Terminal  = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
    lazygit:toggle()
end