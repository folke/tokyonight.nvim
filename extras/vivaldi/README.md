# Tokyo Night for Vivaldi Browser

The Tokyo Night theme collection for Vivaldi browser. Includes day, moon, night, and storm variants, each with 8 highlight color options (blue, yellow, green, teal, purple, magenta, orange, and red). Defaults to blue.

## Usage

Vivaldi themes must be provided as zip files with a specific structure. Each theme requires a JSON file named `settings.json` inside the zip archive.

### Build script

A script is included to build the theme files:

1. Navigate to the `extras/vivaldi` directory
2. Run the build script:

   ```bash
   ./build
   ```

   This creates zip files for each theme variant with the JSON file renamed to `settings.json`.

### Manual Zipping

If you prefer to manually create the theme files:

1. Create a temporary directory
2. Copy a theme JSON file (e.g., `tokyonight_day.json`) to this directory
3. Rename it to `settings.json`
4. Zip the file: 

   ```bash
   zip tokyonight_day.zip settings.json`
   ```

5. Repeat for each theme variant

## Installation

1. In Vivaldi, go to Settings > Themes
2. Click "Import Themes" and select one of the zip files
3. The theme will appear in your themes list
4. Click the theme to apply it
