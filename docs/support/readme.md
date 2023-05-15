# MARP Customization

This project has been set up with a MARP customization in the CSS file `csd-workshop2023.css`.

## Features

- Imports `default` or alternatively `gaia` for base styling

### On `section` (slide) elements

- class `workshop` stabilizes the base font size for either imported theme
- class `shrink` sets the base font size a little smaller
- class `whitebg` sets the background to white, irrespective of theme setting
- class `invert` sets background color to NIST blue-black with white text (dark theme)
- class `headed` rearranges the page architecture, promoting the first element into a page header across the top
- class `radialbg` adds a subtle radial-fade background (to go with `invert`)

Add and overload classes to any section in the MARP way (at the top of a slide):

```
<!-- _class: workshop invert radialbg -->
```

This sets a class for this page only, with all three values given. As indicated by the underscore _, the setting applies to this page only; without the underscore the setting will 'stick' to subsequent pages.

See file `scratchpad.md` for some exemplification.
