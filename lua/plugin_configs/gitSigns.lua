local gitsigns_setup, gitsigns = pcall(require, "gitsigns")
if not gitsigns_setup then
	return
end

gitsigns.setup()
