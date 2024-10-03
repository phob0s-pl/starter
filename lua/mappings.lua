require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Surround
map("x", "'", [[:s/\%V\(.*\)\%V/'\1'/ <CR>]], { desc = "Surround selection with '" })
map("x", '"', [[:s/\%V\(.*\)\%V/"\1"/ <CR>]], { desc = 'Surround selection with "' })
map("x", "*", [[:s/\%V\(.*\)\%V/*\1*/ <CR>]], { desc = "Surround selection with *" })

map("n", "<leader>s*", [[:s/\<<C-r><C-w>\>/*<C-r><C-w>\*/ <CR>]], { desc = "Surround word with *" })
map("n", '<leader>s"', [[:s/\<<C-r><C-w>\>/"<C-r><C-w>\"/ <CR>]], { desc = 'Surround word with "' })
map("n", "<leader>s'", [[:s/\<<C-r><C-w>\>/'<C-r><C-w>\'/ <CR>]], { desc = "Surround word with '" })

-- 

-- LSP
map("n", "<leader>lf", vim.diagnostic.open_float, { desc = "Diagnostics under cursor" })

-- Telescope
local telescope = require "telescope.builtin"

map("n", "<leader>br", telescope.git_branches, { desc = "Telescope Git Branches" })
map("n", "<leader>gs", telescope.git_status, { desc = "Telescope Git Status" })
map("n", "<leader>gt", telescope.git_stash, { desc = "Telescope Git Stash" })

map("n", "<leader>ca", require("actions-preview").code_actions, { desc = "Telescope LSP code action preview" })
map("n", "<leader>fl", telescope.diagnostics, { desc = "Telescope find LSP diagnostics" })

map("n", "<leader>fc", telescope.commands, { desc = "Telescope find commands" })
map("n", "<leader>fr", telescope.registers, { desc = "Telescope find registers" })
map("n", "<leader>fu", telescope.grep_string, { desc = "Telescope grep string under cursor" })
map("n", "<leader>fb", telescope.current_buffer_fuzzy_find, { desc = "Telescope find current buffer" })

map("n", "<leader>fk", telescope.keymaps, { desc = "Telescope find keymaps" })
map("n", "<leader>fj", telescope.marks, { desc = "Telescope find marks" })
map("n", "<leader>fp", telescope.filetypes, { desc = "Telescope find filetypes" })
map("n", "<leader>fs", telescope.spell_suggest, { desc = "Telescope spell suggestion" })

map("n", "<leader>ft", telescope.lsp_dynamic_workspace_symbols, { desc = "Telescope find LSP tags" })

map("n", "<leader>fw", telescope.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fz", function()
  telescope.grep_string { search = "" }
end, { desc = "Telescope fuzzy grep string" })

-- Gitsigns
map("n", "<leader>df", require("gitsigns").diffthis, { desc = "Git diff" })

