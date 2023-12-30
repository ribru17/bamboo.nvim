for k in pairs(package.loaded) do
  if k:match('.*bamboo.*') then
    package.loaded[k] = nil
  end
end

require('bamboo').set_options('style', 'light')
vim.o.background = 'light'
require('bamboo').colorscheme()
