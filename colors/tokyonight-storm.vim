" clear cache so this reloads changes.
" useful for development
" lua package.loaded['tokyonight'] = nil
" lua package.loaded['tokyonight.theme'] = nil
" lua package.loaded['tokyonight.colors'] = nil
" lua package.loaded['tokyonight.util'] = nil
lua package.loaded['tokyonight.config'] = nil
lua vim.o.background = "dark"
lua vim.g.tokyonight_style = "storm"
lua require('tokyonight').colorscheme()
