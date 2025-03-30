# Tokyo Night for Pygments

The Tokyo Night theme collection defined as `Style` classes for the [Pygments](https://pygments.org) syntax highlighter.

## Usage

Pygments loads custom styles through its [plugin system](https://pygments.org/docs/plugins/) using Python package `entry_points`.

1. Select a generated style file from this directory (e.g., `tokyonight_moon.py`).
2. Follow the Pygments documentation on [developing styles](https://pygments.org/docs/styledevelopment/) and using [plugins](https://pygments.org/docs/plugins/) to make the style class available to Pygments by installing it within a Python package.
3. Once installed and registered via entry points under a chosen name (e.g., `tokyonight_moon`), you can use it with Pygments tools:

   ```bash
   pygmentize -S tokyonight_moon -f terminal256 your_file.ext
   ```
