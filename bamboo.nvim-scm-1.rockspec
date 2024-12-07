local git_ref = '95079e497d9697924d67c3cccb35bcee0e35e949'
local modrev = 'scm'
local specrev = '1'

local repo_url = 'https://github.com/ribru17/bamboo.nvim'

rockspec_format = '3.0'
package = 'bamboo.nvim'
version = modrev .. '-' .. specrev

description = {
  summary = 'Warm Green Theme for Neovim and Beyond',
  detailed = '',
  labels = { 'neovim' },
  homepage = 'https://github.com/ribru17/bamboo.nvim',
  license = 'MIT',
}

dependencies = { 'lua >= 5.1' }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'bamboo.nvim-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git'),
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'colors' },
}
