local success, neotree = pcall(require, "neo-tree")

if not success then
    return
end

local options = {
    source_selector = {
        winbar = false,
        statusline = false
    },

    sources = { "filesystem", "buffers", "git_status" },

    window = {
        position = "left",
        width = 30,
    },
    
    filesystem = {
        filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = { '.git' },
            never_show = {},
        },
    },
    default_component_configs = {
        indent = {
            with_expanders = true,
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
        },
    },
}

neotree.setup(options)
