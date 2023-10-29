require("xyious.set")
require("xyious.remap")
vim.cmd('set langmap=ad,AD,bn,BN,cr,CR,d\\\\;,D:,ef,EF,fo,FO,gi,GI,hu,HU,is,IS,j/,J?,ky,KY,le,LE,nj,NJ,og,OG,pv,PV,qp,QP,rk,RK,sh,SH,tl,TL,ua,UA,vw,VW,wt,WT,xq,XQ,y\\\\,,Y\\",zb,ZB')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "theprimeagen/harpoon",
    "stankovictab/mgz.nvim",
    { 'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

})

