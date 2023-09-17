for k in pairs(package.loaded) do
  if k:match('.*bamboo.*') then
    package.loaded[k] = nil
  end
end

require('bamboo').setup()
require('bamboo').colorscheme()
