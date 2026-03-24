# Tokyo Night for Gemini CLI

This directory contains the Tokyo Night color scheme for the [Gemini CLI](https://github.com/google-gemini/gemini-cli).

## Installation

1. Choose your preferred Tokyo Night style (Storm, Moon, Night, or Day).
2. Open your Gemini CLI `settings.json` file. You can find this in:
   - **Linux/macOS:** `~/.gemini/settings.json`
   - **Windows:** `%USERPROFILE%\.gemini\settings.json`
3. Add or update the `ui.theme` property with the absolute path to your chosen theme file:

```json
{
  "ui": {
    "theme": "/absolute/path/to/tokyonight_night.json"
  }
}
```

Alternatively, you can copy the contents of the JSON file into the `ui.customThemes` object in your `settings.json`:

```json
{
  "ui": {
    "customThemes": {
      "Tokyo Night": {
        "name": "Tokyo Night",
        "type": "custom",
        ...
      }
    },
    "theme": "Tokyo Night"
  }
}
```

## Styles

- **tokyonight_storm.json**: Tokyo Night Storm (Dark)
- **tokyonight_moon.json**: Tokyo Night Moon (Dark)
- **tokyonight_night.json**: Tokyo Night (Dark)
- **tokyonight_day.json**: Tokyo Night Day (Light)
