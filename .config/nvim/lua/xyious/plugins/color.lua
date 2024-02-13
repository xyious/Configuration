function ColorMyPencils(color) 
	color = color or "mgz"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    "stankovictab/mgz.nvim",
    config = function()
        ColorMyPencils()
    end
}
