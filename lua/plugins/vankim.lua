return {
  "akSkwYX/vankim.nvim",
  lazy = true,
  cmd = { "AnkiNew", "AnkiSend", "AnkiJump", "AnkiMoveField" },
  keys = {
    { "<leader>an", "<cmd>AnkiNew<cr>",                 desc = "Anki: New Note" },
    { "<leader>as", "<cmd>AnkiSend true<cr>",           desc = "Anki: Send Note" },
    { "<leader>aj", "<cmd>AnkiJump next<cr>",           desc = "Anki: Jump to next field" },
    { "<leader>ak", "<cmd>AnkiJump previous<cr>",       desc = "Anki: Jump to previous field" },
    { "<leader>ab", "<cmd>AnkiMoveField beginning<cr>", desc = "Anki: Move to begining of field" },
    { "<leader>ae", "<cmd>AnkiMoveField end<cr>",       desc = "Anki: Move to end of field" },
    { "<leader>ad", "<cmd>AnkiDeck<cr>",                desc = "Anki: Select Deck" },
    { "<leader>am", "<cmd>AnkiModel<cr>",               desc = "Anki: Select Model" },
  },
  config = function()
    require("vankim").setup()
  end,
}
