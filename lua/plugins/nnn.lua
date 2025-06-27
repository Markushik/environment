local success, nnn = pcall(require, "nnn")

if not success then
    return vim.notify("nnn dead")
end

local options = {
    explorer = {
        cmd = "nnn",
        width = 50,
        side = "botright",
        tabs = true,
        fullscreen = true
    },
    picker = {
        cmd = "nnn",
        style = {
            width = 0.9,
            height = 0.8,
            xoffset = 0.5,
            yoffset = 0.5,
            border = "single"
        },
        session = "",
        tabs = true,
        fullscreen = true,
    },
    auto_open = {
        setup = "explorer",
        tabpage = "explorer",
        empty = false,
        ft_ignore = {
            "gitcommit",
        }
    },
    auto_close = true,
}

nnn.setup(options)
