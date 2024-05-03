local status, bufferline = pcall(require, "bufferline")

if not status then
	return print("Bufferline Not found!!")
end

bufferline.setup({ options = {
	-- separator_style = "slant",
} })
