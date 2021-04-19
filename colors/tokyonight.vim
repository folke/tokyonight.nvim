" clear cache so this reloads changes.
" useful for development
lua package.loaded['tokyonight'] = nil
lua package.loaded['tokyonight.theme'] = nil
lua package.loaded['tokyonight.colors'] = nil
lua package.loaded['tokyonight.util'] = nil
lua package.loaded['tokyonight.config'] = nil

lua require('tokyonight').colorscheme()

augroup TokyoNight
  autocmd!
  autocmd BufWritePost */lua/tokyonight/** nested colorscheme tokyonight
augroup end

" autocmd BufWinEnter quickfix setlocal winhighlight=Normal:NormalSB,SignColumn:SignColumnSB