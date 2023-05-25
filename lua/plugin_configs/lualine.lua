local status, lualine = pcall(require, "lualine")

if not status then
	return print("Lualine not found")
end

lualine.setup()
