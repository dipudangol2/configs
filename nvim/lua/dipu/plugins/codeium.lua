return {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
            -- Enable virtual text
            virtual_text = {
                enabled = true, -- Enable virtual text completions
                manual = false, -- Automatically show completions (set to true to trigger manually)
                idle_delay = 75, -- Delay in ms before showing completions after typing stops
                virtual_text_priority = 65535, -- Priority for virtual text to appear on top of other text
                map_keys = true, -- Enable key mappings for virtual text completions
                key_bindings = {
                    accept = "<Tab>", -- Accept the current completion
                    next = "<M-]>", -- Cycle to the next completion
                    prev = "<M-[>", -- Cycle to the previous completion
                },
            },
        })
    end,
}
