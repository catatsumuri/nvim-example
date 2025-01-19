local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example plugin setup
-- require('lazy').setup({
--   {
--     'nvim-telescope/telescope.nvim',
--     dependencies = { 'nvim-lua/plenary.nvim' },
--   },
-- })
