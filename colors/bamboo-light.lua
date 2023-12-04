for k in pairs(package.loaded) do
  if k:match('.*bamboo.*') then
    package.loaded[k] = nil
  end
end

vim.opt.background = 'light'
require('bamboo').setup { style = 'light' }
require('bamboo').colorscheme()
