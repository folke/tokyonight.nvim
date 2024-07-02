# What's New?

## 4.x

**TokyoNight** creates almost 900 highlight groups, so it was about time to refactor the code :)

Support for plugins has been split in separate files and can be enabled/disabled via `opts`.

For `lazy.nvim` users `opts.plugins.auto = true` will automatically enable/disable plugins
based on the plugins you have installed.

By default `opts.plugins.all = true` for users not using `lazy.nvim`, which will enable all plugins.
Set it to `false` to manually enable/disable plugins.

- Loading of your customized `toyonight` theme is automatically cached.
  **TN** was already quite fast, but now it's even faster (around 2ms on my machine with all lazy plugins enabled).
- The `day` style has been updated and fixed
- removed the option `opts.hide_inactive_statusline`
- removed the option `opts.sidebars`

---

## Bonus: `tokyonight` Dev Environment

Mostly for my owe use, but I've added a `tokyonight` dev environment to the repo,
that is automatically loaded from `.lazy.lua` when you use `lazy.nvim`.

It mostly configures [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) to easily
what the colors and highlight groups look like.
