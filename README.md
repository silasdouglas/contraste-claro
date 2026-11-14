# Contraste Claro

A light VS Code theme focused on readable contrast and on making important information stand out.

- Every syntax color meets WCAG AA (≥ 4.5:1) against the editor background.
- Errors, warnings, search matches, git changes and bracket pairs get strong, distinct highlights.
- Includes integrated terminal colors.

## Install

```bash
./build.sh
```

The script packages the theme as a `.vsix` (no `vsce` needed) and installs it with `code --install-extension`. Then pick **Contraste Claro** with `Ctrl+K Ctrl+T`.

## Editing

Colors live in `themes/contraste-claro.json`. Bump `version` in `package.json` and run `./build.sh` again to apply changes.
