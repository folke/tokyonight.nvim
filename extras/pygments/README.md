# Tokyo Night for Pygments

The Tokyo Night theme collection defined as `Style` classes for the [Pygments](https://pygments.org) syntax highlighter.

## Installation

This directory is a Python package and can be installed directly using pip or uv. This will register the styles with Pygments via its plugin system.

Choose one of the following installation methods:

**Using pip:**

```bash
pip install git+https://github.com/folke/tokyonight.nvim.git@main#subdirectory=extras/pygments
```

**Using uv:**

```bash
uv add git+https://github.com/folke/tokyonight.nvim.git@main#subdirectory=extras/pygments
```

> [!NOTE]
>
> A quick breakdown of the URL structure used for VCS installation using Python installer:
>
> ```bash
> git+https://github.com/folke/tokyonight.nvim.git@main#subdirectory=extras/pygments
>                                                 ^^^^^
> ```
>
> The `@main` part specifies the git branch to install from. You can change `main` to a specific tag or commit hash if needed.
>
> ```bash
> git+https://github.com/folke/tokyonight.nvim.git@main#subdirectory=extras/pygments
>                                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> ```
>
> The `#subdirectory=extras/pygments` part tells the installer to treat the `extras/pygments` directory within the repository as the package root. This part is specific to this installation and should generally not be changed.
>

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
