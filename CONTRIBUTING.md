# Contributing to Tokyo Night

Thank you for your interest in contributing to Tokyo Night! Pull requests are welcome.

## Adding Plugin Support

The most common contribution is adding highlight groups for a new Neovim plugin. Here's how to do it:

### Plugin Module Structure

Each plugin has its own file in `lua/tokyonight/groups/` that defines the highlight groups for that plugin. A typical plugin module looks like this:

```lua
local M = {}

M.url = "https://github.com/author/plugin-name"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HighlightGroup1 = { fg = c.blue, bg = c.bg },
    HighlightGroup2 = { fg = c.red, bold = true },
    HighlightGroup3 = { link = "Normal" },
  }
end

return M
```

### Available Colors

The `c` parameter contains all theme colors. Common colors include:

**Foreground/Background:**
- `c.fg`, `c.bg` - main foreground/background
- `c.fg_dark`, `c.bg_dark` - darker variants
- `c.fg_gutter`, `c.bg_highlight` - gutter and highlight backgrounds
- `c.bg_float` - floating window background
- `c.border_highlight` - border color

**Basic Colors:**
- `c.blue`, `c.cyan`, `c.green`, `c.magenta`, `c.orange`, `c.purple`, `c.red`, `c.teal`, `c.yellow`
- `c.blue0` through `c.blue7` (and similar for other colors) - color variations

**Semantic Colors:**
- `c.error`, `c.warning`, `c.info`, `c.hint` - diagnostic colors
- `c.comment` - comment color
- `c.none` - transparent/no color

**Terminal Colors:**
- `c.terminal_black`, `c.terminal.black_bright`, etc.

For the complete list of available colors, see [colors.lua](lua/tokyonight/colors.lua).

### Highlight Attributes

Each highlight group can have these attributes:

- `fg` - foreground color
- `bg` - background color
- `sp` - special color (for underlines, etc.)
- `bold` - boolean
- `italic` - boolean
- `underline` - boolean
- `undercurl` - boolean
- `strikethrough` - boolean
- `link` - link to another highlight group (e.g., `link = "Normal"`)

### How to Add Plugin Support

1. **Find the highlight groups**: Check the plugin's documentation or source code to find the highlight group names it uses. You can also use `:Telescope highlights` or `:so $VIMRUNTIME/syntax/hitest.vim` to see active highlight groups.

2. **Create the plugin file**: Create a new file `lua/tokyonight/groups/plugin-name.lua`:

   ```lua
   local M = {}

   M.url = "https://github.com/author/plugin-name"

   ---@type tokyonight.HighlightsFn
   function M.get(c, opts)
     -- stylua: ignore
     return {
       PluginHighlight1 = { fg = c.blue },
       PluginHighlight2 = { fg = c.green, bg = c.bg_dark },
       -- ... more highlight groups
     }
   end

   return M
   ```

3. **Register the plugin**: Add an entry to the `M.plugins` table in `lua/tokyonight/groups/init.lua`:

   ```lua
   M.plugins = {
     -- ... existing plugins ...
     ["plugin-name"]     = "plugin-name",  -- key is the plugin repo name, value is the group file name
   }
   ```

   The key should match the plugin's repository name (what you see in lazy.nvim or other plugin managers). The value is the filename (without `.lua`) you created in step 2.

4. **Test your changes**:
   - Run the test suite: `./scripts/test`
   - Install the plugin in your Neovim config
   - Load the tokyonight theme
   - Verify the highlights look good in all 4 styles (storm, moon, night, day)
   - Test with both light and dark backgrounds

5. **Follow the style guide**:
   - Use `-- stylua: ignore` before the return table to prevent formatting
   - Align highlight group names for readability (as shown in examples)
   - Group related highlights together
   - Add comments if the purpose of a highlight isn't obvious

### Tips for Choosing Colors

- Look at similar highlight groups in [base.lua](lua/tokyonight/groups/base.lua) for consistency
- Use semantic colors (`c.error`, `c.warning`, etc.) for diagnostic-related highlights
- Use `c.comment` for subtle/muted text
- Use `c.fg_dark` for less important text
- For UI elements, prefer `c.bg_float` over `c.bg` for floating windows
- When in doubt, link to an existing group: `{ link = "Normal" }`

### Testing Different Styles

Make sure to test your highlights with all theme styles:

```lua
-- In your Neovim config
vim.cmd("colorscheme tokyonight-storm")
vim.cmd("colorscheme tokyonight-moon")
vim.cmd("colorscheme tokyonight-night")
vim.cmd("colorscheme tokyonight-day")
```

### Example: Adding a Simple Plugin

Here's a complete example for a fictional plugin called "cool-finder.nvim":

1. Create `lua/tokyonight/groups/cool-finder.lua`:

```lua
local M = {}

M.url = "https://github.com/author/cool-finder.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    CoolFinderNormal   = { fg = c.fg, bg = c.bg_float },
    CoolFinderBorder   = { fg = c.border_highlight, bg = c.bg_float },
    CoolFinderTitle    = { fg = c.blue, bold = true },
    CoolFinderMatch    = { fg = c.magenta, bold = true },
    CoolFinderSelected = { fg = c.fg, bg = c.bg_highlight },
  }
end

return M
```

2. Add to `lua/tokyonight/groups/init.lua`:

```lua
M.plugins = {
  -- ... existing entries ...
  ["cool-finder.nvim"] = "cool-finder",
}
```

That's it! The plugin will now automatically be themed when loaded.

## Adding Extras

For the [extras](extras/), we use a simple template system that can be used to generate themes for the different styles (storm, moon, night, and day).

### How Extras Work

Each extra is a Lua module that:

1. Receives a `colors` table containing the full color scheme for a particular style
2. Returns a string with the theme configuration for the target application
3. Uses `util.template()` to substitute color variables into the theme template

The build system automatically generates theme files for all four styles (storm, moon, night, day) from your template.

### Extra Template Structure

A typical extra template looks like this:

```lua
local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  return util.template([[
# Example theme for Cool App
# name: ${_style_name}

background = ${bg}
foreground = ${fg}
accent = ${blue}
]], colors)
end

return M
```

### Important Guidelines

1. **No variant generation**: Each extra should generate exactly ONE theme file per style. Do not loop through color variants or create multiple files.

2. **Deterministic output**: Avoid using random values, timestamps, or other non-deterministic data. If you need unique identifiers, generate them deterministically from the theme name.

3. **Use template variables**: Reference colors using `${color_name}` syntax within the template string. Common colors include:
   - `${bg}`, `${fg}`, `${bg_dark}`, `${fg_dark}`
   - `${blue}`, `${red}`, `${green}`, `${yellow}`, `${magenta}`, `${cyan}`, `${orange}`
   - `${_style_name}` - the theme variant name (e.g., "Tokyo Night Storm")
   - `${_name}` - the base name (e.g., "tokyonight_storm")
   - `${_upstream_url}` - the GitHub URL

4. **Return a string**: The `generate()` function should return the complete theme file as a string. The build system handles writing to disk.

5. **Follow existing patterns**: Look at other extras like [kitty.lua](lua/tokyonight/extra/kitty.lua) or [alacritty.lua](lua/tokyonight/extra/alacritty.lua) for examples.

### How to Add a New Extra

1. Create a file like `lua/tokyonight/extra/cool-app.lua` following the template structure above.

2. Add the name and output file extension to the `extras` table in `lua/tokyonight/extra/init.lua`:

   ```lua
   M.extras = {
     -- ... existing extras ...
     ["cool-app"] = { ext = "conf" }, -- or .json, .toml, etc.
   }
   ```

3. Run the build script from the tokyonight plugin directory:

   ```sh
   ./scripts/build
   ```

4. Check the newly created themes in the `extras/cool-app/` directory.

5. **DO NOT** commit the generated theme files in `extras/` - they are automatically built by CI. Only commit your Lua template file and the change to `init.lua`.

6. (Optional) Add a README.md in `extras/cool-app/` explaining how to install and use the themes.

### Testing Your Extra

Before submitting a PR:

1. Run the test suite: `./scripts/test`
2. Run the build script and verify it generates valid theme files
3. Test the generated themes in the target application
4. Verify all four styles (storm, moon, night, day) work correctly
5. Check that running the build multiple times produces identical output (no random/time-based values)

### Common Pitfalls

- **Generating multiple variants**: Don't loop through `colors.rainbow` or create blue/red/green variants. Each extra generates exactly 4 files (one per style).
- **Non-deterministic values**: Using `os.clock()`, `math.random()`, or timestamps causes unnecessary file changes on every build.
- **Hardcoded colors**: Use template variables instead of hardcoding hex values.
- **Not using util.template()**: Always use `util.template()` for string substitution.

## Testing

Before submitting any PR, always run the test suite to ensure your changes don't break existing functionality:

```sh
./scripts/test
```

This will run all tests including:
- Colorscheme loading tests
- Highlight group generation tests
- Plugin integration tests

Make sure all tests pass before submitting your PR.

## General Contribution Guidelines

- Follow the existing code style
- Test your changes thoroughly (run `./scripts/test`)
- Keep commit messages clear and descriptive
- Update documentation if needed

Thank you for contributing!
