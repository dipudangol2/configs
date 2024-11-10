local function export_keymaps()
    -- File to save the mappings
    local file_path = vim.fn.expand("~/.config/nvim/custom_keymaps.txt")
    local file = io.open(file_path, "w")

    if not file then
        print("Failed to open file for writing: " .. file_path)
        return
    end

    -- Modes to check
    local modes = { "n", "i", "v", "x", "c", "t" }
    local mode_names = {
        n = "Normal",
        i = "Insert",
        v = "Visual",
        x = "Visual Block",
        c = "Command",
        t = "Terminal",
    }

    for _, mode in ipairs(modes) do
        file:write(string.format("\n--- %s Mode ---\n", mode_names[mode]))

        -- Get mappings for each mode
        local mappings = vim.api.nvim_get_keymap(mode)
        for _, map in ipairs(mappings) do
            file:write(string.format("%s -> %s (options: %s)\n", map.lhs, map.rhs or "nil", vim.inspect(map)))
        end
    end

    file:close()
    print("Custom keymaps written to " .. file_path)
end

export_keymaps()
