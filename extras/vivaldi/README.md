# Merino for Vivaldi

Vivaldi imports theme ZIPs containing a `settings.json` file. Package both
appearances with:

```sh
python3 extras/vivaldi/build
```

This creates `tokyonight-merino-dark.zip` and `tokyonight-merino-light.zip`
next to the source JSON files. Import the desired archive through Vivaldi's
Settings > Themes > Import Theme. Archives are generated locally and ignored
by Git; the JSON definitions remain the source files.
