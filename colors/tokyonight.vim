" You probably always want to set this in your vim fileeee
set background=dark
let g:colors_name="tokyonight"

" include our theme file and pass it to lush to apply


" By setting our module to nil, we clear lua's cache,
" which means the require ahead will *always* occur.
"
" This isn't strictly required but it can be a useful trick if you are
" incrementally editing your config a lot and want to be sure your themes
" changes are being picked up without restarting neovim.
"
" The performance impact of this call can be measured in the hundreds of
" *nanoseconds* and such could be considered "production safe".
lua package.loaded['tokyonight'] = nil
lua package.loaded['tokyonight.theme'] = nil
lua package.loaded['tokyonight.colors'] = nil

lua require('tokyonight').colorscheme()

if exists('g:autoloaded_tokyonight')
  finish
endif
let g:autoloaded_tokyonight = 1

autocmd BufWritePost */lua/tokyonight/** nested colorscheme tokyonight 