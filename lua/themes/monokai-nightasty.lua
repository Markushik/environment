local success, monokai = pcall(require, "monokai-nightasty")

if not success then
    return vim.notify("Monokai dead")
end

local options = {
	dark_style_background = "transparent"
}

monokai.setup(options)
monokai.load()
