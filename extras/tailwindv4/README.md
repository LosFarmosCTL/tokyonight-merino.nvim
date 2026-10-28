# Merino for Tailwind CSS v4

Copy one or both generated files into your project and import them after
Tailwind:

```css
@import "tailwindcss";
@import "./tokyonight-merino-dark.css";
@import "./tokyonight-merino-light.css";
```

The appearances have separate variable namespaces, so both can coexist:

```html
<button class="bg-tokyonight-merino-dark-bg text-tokyonight-merino-dark-fg">
  Example
</button>
```

Use `tokyonight-merino-light-` utilities for the light palette. Semantic surface
variables follow the same values as the Neovim theme.
