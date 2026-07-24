return {
  "hyperb1iss/silkcircuit",
  lazy = false,
  priority = 1000,
  config = function()
    require("silkcircuit").setup({
      transparent = true,
      terminal_colors = false,
      dim_inactive = false,
      variant = "glow",       -- "neon" | "vibrant" | "soft" | "glow" | "dawn"

      styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = { bold = true, italic = true },
        variables = {},
        strings = { italic = true },
      },
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
        end,
      })

    })
    vim.cmd.colorscheme("silkcircuit")
  end,
}

