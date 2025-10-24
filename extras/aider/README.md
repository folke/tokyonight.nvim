# Tokyo Night for aider

Tokyo Night themes for the [aider](https://aider.chat) CLI tool.

## Usage

Copy the contents of the theme `.yml` file to your `.aider.conf.yml` file.

This file can be located in different places, depending on the scope desired (global per-user, per-repo, or per-directory). See the [aider docs](https://aider.chat/docs/config/aider_conf.html#yaml-config-file) for more information.

### Markdown syntax highlighting

The `code-theme` setting, which controls the syntax highlighting for code blocks in the LLM Markdown responses, depends on the [Pygments extra](../pygments/) and is disabled by default. It must be installed in the same Python environment that aider is installed in, which can differ depending on how aider was installed.

The following example is for if you used the [recommended](https://aider.chat/docs/install.html#get-started-quickly-with-aider-install) installation tool [aider-install](https://pypi.org/project/aider-install/). 

> [!NOTE]
> For other installation methods, use the appropriate way of installing Python packages for that method. See the [Installation](../pygments/README.md#installation) section of the Pygments extra for more information.

aider-install uses the [uv](https://astral.sh/uv) Python package and project manager CLI tool and it's `uv tool` command behind the scenes.

To install additional dependencies using `uv tool`, there is `--with` CLI option:

```bash
uv tool install --force --python python3.12 aider-chat@latest --with git+https://github.com/folke/tokyonight.nvim.git@main#subdirectory=extras/pygments
```

For more information about `uv tool`, see the [uv documentation](https://docs.astral.sh/uv/concepts/tools/).
