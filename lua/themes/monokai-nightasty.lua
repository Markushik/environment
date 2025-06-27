local success, monokai = pcall(require, "monokai-nightasty")

local options = {
	dark_style_background = "transparent"
}

monokai.setup(options)
monokai.load()
