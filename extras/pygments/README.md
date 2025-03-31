# Tokyo Night for Pygments

The Tokyo Night theme collection defined as `Style` classes for the [Pygments](https://pygments.org) syntax highlighter.

## Installation

This directory is a Python package and can be installed directly using pip or uv. This will register the TokyoNight styles with Pygments via its plugin system.

Choose one of the following installation methods:

**Using pip:**

```bash
pip install "git+https://github.com/folke/tokyonight.nvim.git#subdirectory=extras/pygments"
```

**Using uv:**

```bash
# Install directly
uv pip install "git+https://github.com/folke/tokyonight.nvim.git#subdirectory=extras/pygments"

# Or, add to your project with uv
uv add pygments-tokyonight --git "https://github.com/folke/tokyonight.nvim.git" --subdirectory "extras/pygments"
```

## Usage

Once installed, the following styles will be available to Pygments:

*   `tokyonight` (maps to `tokyonight-night`)
*   `tokyonight-day`
*   `tokyonight-moon`
*   `tokyonight-storm`

You can use them with Pygments tools like `pygmentize`:

```bash
# Example using the moon style
pygmentize -S tokyonight-moon -f terminal256 your_file.ext

# Example using the default night style
pygmentize -S tokyonight -f terminal256 your_file.ext
```
