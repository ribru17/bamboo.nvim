for k in pairs(package.loaded) do
  if k:match('.*bamboo.*') then
    package.loaded[k] = nil
  end
end

require('bamboo').set_options('style', 'multiplex')
vim.o.background = 'dark'
require('bamboo').colorscheme()
