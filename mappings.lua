local M = {}

M.tab_navigation = {
  n = {
    ["<C-Tab"] = {":tabnext", "Next tab"},
    ["<leader><Tab>"] = {"<C-w>T", "Break Into New Tab"},
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
    ["kj"] = {"<Esc>", "Exit insert mode"},
  },
  n = {
    ["<leader>tb"] = {":TagbarToggle<CR>", "Toggle TagBar"},
    ["<leader>cd"] = {":cd %:p:h<CR>", "Change Directory To Current File"},
    ["<leader>ow"] = {":!\"C:\\Users\\Eric.Nelson\\AppData\\Local\\Programs\\Microsoft VS Code\\bin\\code\" -r -g \"%:p\":<C-r>=line(\".\")<CR>:<C-r>=col(\".\")<CR> \"%:p:h\"<CR><CR>"},
  },
  t = {
    ["kj"] = {"<Esc>", "Exit term mode"},
  }
}
return M
