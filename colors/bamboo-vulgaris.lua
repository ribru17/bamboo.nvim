for k in pairs(package.loaded) do
  if k:match('.*bamboo.*') then
    package.loaded[k] = nil
  end
end

vim.opt.background = 'dark'
require('bamboo').setup { style = 'vulgaris' }
require('bamboo').colorscheme()
