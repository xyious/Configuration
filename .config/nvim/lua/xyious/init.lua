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
    spec = "xyious.plugins",
})

