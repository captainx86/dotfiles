local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<Tab>"] = "",
    ["<S-Tab>"] = "",
  },
  i = {
    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-l>"] = "",
  }
}

M.tab_navigation = {
  n = {
    ["]a"] = {"<Cmd>next<CR>", "next file in arglist"},
    ["[a"] = {"<Cmd>previous<CR>", "previous file in arglist"},
  }
}

M.cursor_movement = {
  n= {
    ["<C-d>"] = {"<C-d>zz", "Scroll Down"},
    ["<C-u>"] = {"<C-u>zz", "Scroll Up"},
    ["n"] = {"nzzzv", "Repeat Search"},
    ["N"] = {"Nzzzv", "Repeat Search Backwards"},
    ["G"] = {"Gzz", "Go to End of File"},
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gjzz"', "Move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gkzz"', "Move up", opts = { expr = true } },
    ["<leader>H"] = {"zzLzz``", "Throw Current Line to Top"},
    ["<leader>L"] = {"zzHzz``", "Throw Current Line to Bottom"},
  }
}

M.general = {
  i = {
    ["<C-l>"] = {"<Del>", "Delete"},
  },
  n = {
    ["<leader>tb"] = {":TagbarToggle<CR>", "Toggle TagBar"},
    ["<leader>cd"] = {":cd %:p:h<CR>", "Change Directory To Current File"},
    ["<leader>ow"] = {":!\"C:\\Users\\Eric.Nelson\\AppData\\Local\\Programs\\Microsoft VS Code\\bin\\code\" -r -g \"%:p\":<C-r>=line(\".\")<CR>:<C-r>=col(\".\")<CR> \"%:p:h\"<CR><CR>"},
    ["<leader>hf"] = {":lua require('harpoon.mark').add_file()<CR>", "Mark file with harpoon"},
    ["<leader>hm"] = {":lua require('harpoon.ui').toggle_quick_menu()<CR>", "Toggle harpoon menu"},
    ["<leader>1"] = {":lua require('harpoon.ui').nav_file(1)<CR>", "Navigate to file 1"},
    ["<leader>2"] = {":lua require('harpoon.ui').nav_file(2)<CR>", "Navigate to file 2"},
    ["<leader>3"] = {":lua require('harpoon.ui').nav_file(3)<CR>", "Navigate to file 3"},
    ["<leader>4"] = {":lua require('harpoon.ui').nav_file(4)<CR>", "Navigate to file 4"},
    ["<leader>5"] = {":lua require('harpoon.ui').nav_file(5)<CR>", "Navigate to file 5"},
    ["<leader>6"] = {":lua require('harpoon.ui').nav_file(6)<CR>", "Navigate to file 6"},
    ["<leader>7"] = {":lua require('harpoon.ui').nav_file(7)<CR>", "Navigate to file 7"},
    ["<leader>8"] = {":lua require('harpoon.ui').nav_file(8)<CR>", "Navigate to file 8"},
    ["<leader>9"] = {":lua require('harpoon.ui').nav_file(9)<CR>", "Navigate to file 9"},
    ["<F5>"] = {"<Cmd>UndotreeToggle<CR>", "Toggle Undotree"},
  },
}
return M
